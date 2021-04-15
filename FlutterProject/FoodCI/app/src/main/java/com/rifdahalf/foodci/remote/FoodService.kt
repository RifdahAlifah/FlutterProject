package com.rifdahalf.foodci.remote

import com.rifdahalf.foodci.model.FoodModelItem
import retrofit2.Call
import retrofit2.http.*

interface FoodService {

    @get:GET("/food")
    val food: Call<List<FoodModelItem>>

    @FormUrlEncoded
    @POST("/food/add")
    fun addFood(
        @Field("nama_food") nama_food: String?,
        @Field("deskripsi_food") deskripsi_food: String?,
        @Field("harga_food") harga_food: String?
        ): Call<List<FoodModelItem>>

    @FormUrlEncoded
    @PUT("/food/update")
    fun updateFood(
        @Field("id_food") id_food:Int,
        @Field("nama_food") nama_food: String?,
        @Field("deskripsi_food") deskripsi_food: String?,
        @Field("harga_food") harga_food: String?
    ): Call<List<FoodModelItem>>

    @FormUrlEncoded
    @HTTP(method = "DELETE", path ="/food/delete", hasBody = true)
    fun deleteFood(
        @Field("id") id:Int
    ): Call<List<FoodModelItem>>
}