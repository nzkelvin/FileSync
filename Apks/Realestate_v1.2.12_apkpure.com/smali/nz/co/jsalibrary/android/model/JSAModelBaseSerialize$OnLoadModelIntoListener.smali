.class public interface abstract Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;
.super Ljava/lang/Object;
.source "JSAModelBaseSerialize.java"

# interfaces
.implements Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$EventDispatchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLoadModelIntoListener"
.end annotation


# virtual methods
.method public abstract onLoadModelInto()Z
.end method

.method public abstract onLoadModelIntoComplete()V
.end method

.method public abstract onLoadModelIntoException(Ljava/lang/Exception;Z)V
.end method
