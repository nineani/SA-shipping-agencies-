function setThumb(event){
        const reader = new FileReader();

        reader.onload = function(event){
            let img = document.createElement("img");
            img.classList.add('.p_img');
            img.setAttribute("src", event.target.result);
            document.querySelector(".imgPreview").appendChild(img);
        };
        reader.readAsDataURL(event.target.files[0]);
}