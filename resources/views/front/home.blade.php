@extends('front.layouts.app')

@section('content')
<section class="section-1">
    <div id="carouselExampleIndicators" class="carousel slide carousel-fade" data-bs-ride="carousel" data-bs-interval="false">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <!-- <img src="images/carousel-1.jpg" class="d-block w-100" alt=""> -->

                <!-- <picture>
                    <source media="(max-width: 799px)" srcset="" />
                    <source media="(min-width: 800px)" srcset="" />
                    <img src="{{asset('front-assets/images/carousel-1.jpg')}}" alt="" />
                </picture> -->

                <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                    <div class="p-3">
                        <h1 class="display-4 text-dark mb-3">Bariss vape Corner</h1>
                        <p class="mx-md-5 px-5">Menghadirkan informasi terkini seputar vape/rokok elektrik di kawasan purworejo.</p>
                        <a class="btn btn-outline-dark py-2 px-4 mt-3" href="{{route('front.shop')}}">Shop Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="section-2">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="box shadow-lg">
                    <div class="fa icon fa-check text-primary m-0 mr-3"></div>
                    <h2 class="font-weight-semi-bold m-0">Quality Product</h5>
                    </div>                    
                </div>
                <div class="col-lg-3 ">
                    <div class="box shadow-lg">
                        <div class="fa icon fa-shipping-fast text-primary m-0 mr-3"></div>
                        <h2 class="font-weight-semi-bold m-0">Free Shipping</h2>
                    </div>                    
                </div>
                <div class="col-lg-3">
                    <div class="box shadow-lg">
                        <div class="fa icon fa-exchange-alt text-primary m-0 mr-3"></div>
                        <h2 class="font-weight-semi-bold m-0">14-Day Return</h2>
                    </div>                    
                </div>
                <div class="col-lg-3 ">
                    <div class="box shadow-lg">
                        <div class="fa icon fa-phone-volume text-primary m-0 mr-3"></div>
                        <h2 class="font-weight-semi-bold m-0">24/7 Support</h5>
                        </div>                    
                    </div>
                </div>
            </div>
        </section>
        <section class="section-3">
            <div class="container">
                <div class="section-title">
                    <h2>Categories</h2>
                </div>           
                <div class="row pb-3">
                    @if (getCategories()->isNotEmpty())

                    @foreach (getCategories() as $category)
                    <div class="col-lg-3">
                        <div class="cat-card">
                            <div class="left">
                                @if($category->image != "")
                                <img src="{{asset('uploads/category/thumb/'.$category->image)}}" alt="icategory" class="img-fluid">
                                @endif
                                <!-- <img src="{{asset('front-assets/images/cat-1.jpg')}}" alt="" class="img-fluid"> -->
                            </div>
                            <div class="right">
                                <div class="cat-data">
                                    <h2>{{$category->name}}</h2>
                                    <!-- <p>100 Products</p> -->
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                    @endif
                </div>
            </div>
        </section>

        <section class="section-4 pt-5">
            <div class="container">
                <div class="section-title">
                    <h2>Featured Products</h2>
                </div>    
                <div class="row pb-3">
                    @if ($featuredProducts->isNotEmpty())
                    @foreach ($featuredProducts as $product)
                    @php
                    $productImage = $product->product_images->first();
                    @endphp
                    <div class="col-md-3">
                        <div class="card product-card">
                            <div class="product-image position-relative">
                                <a href="{{ route ("front.product",$product->slug) }}" class="product-img">
                                    @if (!empty($productImage->image))
                                    <img class="card-img-top" width="100%" height="auto" src="{{ asset('uploads/product/small/'.$productImage->image)}}" alt="iproduct" />
                                    @else
                                    <img src="{{ asset('assets/img/default-150x150.png')}}" width="100%" height="auto" alt="dproduct" />
                                    @endif    
                                </a>
                                <a id="wishlistLinkFeatured{{$product->id}}" class="whishlist" onclick="addToWishlist({{ $product->id }})" href="javascript:void(0);">
                                <i class="far fa-heart"></i>
                                <span class="sr-only">Add To Wishlist</span>
                                </a>

                                <div class="product-action">
                                    @if($product->track_qty == 'Yes')
                                    @if($product->qty > 0)
                                    <a id="addToCartLinkFeatured{{$product->id}}" class="btn btn-dark" onclick="addToCart({{$product->id}});" href="javascript:void(0);">
                                        <i class="fa fa-shopping-cart"></i> Add To Cart
                                    </a>
                                    @else
                                    <a class="btn btn-dark" href="javascript:void(0);">
                                        Out of Stock
                                    </a>>
                                    @endif
                                    @else
                                    <a id="addToCartLinkFeatured{{$product->id}}" class="btn btn-dark" onclick="addToCart({{$product->id}});" href="javascript:void(0);">
                                        <i class="fa fa-shopping-cart"></i> Add To Cart
                                    </a>
                                    @endif                            
                                </div>
                            </div>                        
                            <div class="card-body text-center mt-3">
                                <a class="h6 link" href="product.php">{{$product->title}}</a>
                                <div class="price mt-2">
                                    <span class="h5"><strong>Rp.{{number_format($product->price,2)}}</strong></span>
                                    @if ($product->compare_price > 0)
                                    <span class="h6 text-underline"><del>Rp.{{number_format($product->compare_price,2)}}</del></span>
                                    @endif
                                </div>
                            </div>                        
                        </div>
                    </div> 
                    @endforeach
                    @endif        
                </div>
            </div>
        </section>

        <section class="section-4 pt-5">
            <div class="container">
                <div class="section-title">
                    <h2>Latest Produsts</h2>
                </div>    
                <div class="row pb-3">
                 @if ($latestProducts->isNotEmpty())
                 @foreach ($latestProducts as $product)
                 @php
                 $productImage = $product->product_images->first();
                 @endphp
                 <div class="col-md-3">
                    <div class="card product-card">
                        <div class="product-image position-relative">
                            <a href="{{ route ("front.product",$product->slug) }}" class="product-img">
                                @if (!empty($productImage->image))
                                <img class="card-img-top" src="{{ asset('uploads/product/small/'.$productImage->image)}}" alt="lproduct" />
                                @else
                                <img src="{{ asset('assets/img/default-150x150.png')}}" alt="dlproduct" />
                                @endif    
                            </a>
                            <!-- <a onclick="addToWishlist({{ $product->id}})" class="whishlist" href="javascript:void(0);"><i class="far fa-heart"></i></a>                           -->
                            <a id="wishlistLinkLatest{{$product->id}}" class="whishlist" onclick="addToWishlist({{ $product->id }})" href="javascript:void(0);">
                                <i class="far fa-heart"></i>
                                <span class="sr-only">Add To Wishlist</span>
                            </a>
                            <div class="product-action">
                                @if($product->track_qty == 'Yes')
                                @if($product->qty > 0)
                                <a id="addToCartLinkLatest{{$product->id}}" class="btn btn-dark" onclick="addToCart({{$product->id}});" href="javascript:void(0);">
                                        <i class="fa fa-shopping-cart"></i> Add To Cart
                                    </a>
                                @else
                                <a class="btn btn-dark" href="javascript:void(0);">
                                    Out of Stock
                                </a>
                                @endif
                                @else
                                <a id="addToCartLinkLatest{{$product->id}}" class="btn btn-dark" onclick="addToCart({{$product->id}});" href="javascript:void(0);">
                                        <i class="fa fa-shopping-cart"></i> Add To Cart
                                    </a>
                                @endif                            
                            </div>

                        </div>                        
                        <div class="card-body text-center mt-3">
                            <a class="h6 link" href="product.php">{{$product->title}}</a>
                            <div class="price mt-2">

                                <span class="h5"><strong>Rp.{{number_format($product->price,2)}}</strong></span>

                                @if ($product->compare_price > 0)
                                <span class="h6 text-underline"><del>Rp.{{number_format($product->compare_price,2)}}</del></span>
                                @endif
                            </div>
                        </div>                        
                    </div>
                </div> 
                @endforeach
                @endif               
            </div>
        </div>
    </section>
    @endsection
    