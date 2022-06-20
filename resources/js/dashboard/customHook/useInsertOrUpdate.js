import axios from "axios";
export function useInsertOrUpdate(
    condition,
    route,
    data,
    refreshData,
    switchMethod = false
) {
    if (condition) {
        axios
            .post(`api/${route}/create`, data)
            .then((res) => {
                if (res.status === 200) {
                    refreshData();
                    if (switchMethod !== false) {
                        switchMethod();
                    }
                }
                // console.log(res.data);
            })
            .catch((err) => console.log(err));
    } else {
        axios
            .post(`api/${route}/update`, data)
            .then((res) => {
                if (res.status === 200) {
                    refreshData();
                    // if (switchMethod !== false) {
                    //     switchMethod();
                    // }
                    console.log(res.data);
                }
            })
            .catch((err) => console.log(err));
    }
}
