.class public interface abstract Lnz/co/jsalibrary/android/app/JSAImageLoader$JobItemBitmapResampler;
.super Ljava/lang/Object;
.source "JSAImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/app/JSAImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "JobItemBitmapResampler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<JobItem:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract isBitmapResampledIdentically(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJobItem;)Z"
        }
    .end annotation
.end method

.method public abstract resampleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method
