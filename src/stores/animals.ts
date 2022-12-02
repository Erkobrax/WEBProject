import { defineStore } from "pinia";
import axios from "axios";

export const useAnimalsStore = defineStore("animals", {
  state: () => {
    return {
      id: [] as string[],
      age: [] as string[],
      name: [] as string[],
      type: [] as string[],
      breed: [] as string[],
      color: [] as string[],
      url: [] as string[],
    };
  },
  getters: {
    getAnimalById: () => {
      return async (petId: string) => {
        let pet = null;
        try {
          pet = (await axios.get("https://47.92.133.39/api/animal/" + petId))
            .data;
        } catch (e) {
          console.error(e);
          alert("Fail to get animal");
        }
        console.log(pet);
        return pet;
      };
    },
  },
  actions: {
    async init() {
      let arr;
      while ((await arr)?.data.length != 6) {
        try {
          arr = axios.get("https://47.92.133.39/api/animal/random");
        } catch (e) {
          console.error(e);
          alert("Fail to get random animals");
        }
        console.log(arr);
      }
      for (let i = 0; i < 6; i++) {
        this.id.push((await arr)?.data[i]["id"]);
        this.age.push((await arr)?.data[i]["age"]);
        this.name.push((await arr)?.data[i]["name"]);
        this.type.push((await arr)?.data[i]["type"]);
        this.breed.push((await arr)?.data[i]["breed"]);
        this.color.push((await arr)?.data[i]["color"]);
        try {
          this.url.push(
            (await axios.get("https://47.92.133.39/api/img/" + this.id[i]))
              .data["acgurl"] as string
          );
        } catch (e) {
          console.error(e);
          alert("Fail to get url");
        }
      }
      console.log(this.url);
    },
  },
});
