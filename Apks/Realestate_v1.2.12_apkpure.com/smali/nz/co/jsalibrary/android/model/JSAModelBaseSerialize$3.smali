.class Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$3;
.super Ljava/lang/Object;
.source "JSAModelBaseSerialize.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->loadModelInto(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;

.field final synthetic val$listener:Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;

    .prologue
    .line 528
    iput-object p1, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$3;->this$0:Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;

    iput-object p2, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$3;->val$listener:Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$3;->val$listener:Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$3;->val$listener:Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;

    invoke-interface {v0}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;->onLoadModelIntoComplete()V

    .line 531
    :cond_0
    return-void
.end method
