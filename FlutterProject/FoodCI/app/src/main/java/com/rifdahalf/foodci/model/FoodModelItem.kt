package com.rifdahalf.foodci.model


import com.google.gson.annotations.SerializedName

class FoodModelItem {
    @SerializedName("deskripsi_food")
    var deskripsiFood: String? = null

    @SerializedName("gambar_food")
    var gambarFood: String? = null

    @SerializedName("harga_food")
    var hargaFood: String? = null

    @SerializedName("id_food")
    var idFood: String? = null

    @SerializedName("nama_food")
    var namaFood: String? = null
}