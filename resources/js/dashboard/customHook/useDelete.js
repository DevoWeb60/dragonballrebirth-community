import axios from "axios";
export function useDelete(id, route, refreshData, message) {
    const confirm = window.confirm(message);
    if (confirm) {
        axios
            .post(`api/${route}/delete`, { id: id })
            .then((res) => {
                if (res.status === 200) {
                    refreshData();
                }
            })
            .catch((err) => console.log(err));
    }
}
