.class Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$LoadModelIntoRunnable;
.super Ljava/lang/Object;
.source "JSAModelBaseSerialize.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadModelIntoRunnable"
.end annotation


# instance fields
.field protected final mListener:Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;

.field final synthetic this$0:Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;


# direct methods
.method protected constructor <init>(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;)V
    .locals 0
    .param p2, "listener"    # Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;

    .prologue
    .line 660
    iput-object p1, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$LoadModelIntoRunnable;->this$0:Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    iput-object p2, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$LoadModelIntoRunnable;->mListener:Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;

    .line 662
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 665
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$LoadModelIntoRunnable;->this$0:Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;

    iget-object v1, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$LoadModelIntoRunnable;->mListener:Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->loadModelInto(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;)V

    .line 666
    return-void
.end method
