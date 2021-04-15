package com.rifdahalf.foodci.remote

object APIUtils {
    private const val API_URL ="http://localhost/food/index.php"
    val foodService: FoodService
        get() = RetrofitClient.getClient(API_URL)
            ?.create(FoodService::class.java)!!
}