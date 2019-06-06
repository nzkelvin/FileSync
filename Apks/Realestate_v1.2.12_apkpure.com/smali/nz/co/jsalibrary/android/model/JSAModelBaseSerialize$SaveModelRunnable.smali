.class Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$SaveModelRunnable;
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
    name = "SaveModelRunnable"
.end annotation


# instance fields
.field protected final mListener:Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnSaveModelListener;

.field final synthetic this$0:Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;


# direct methods
.method protected constructor <init>(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnSaveModelListener;)V
    .locals 0
    .param p2, "listener"    # Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnSaveModelListener;

    .prologue
    .line 615
    iput-object p1, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$SaveModelRunnable;->this$0:Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    iput-object p2, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$SaveModelRunnable;->mListener:Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnSaveModelListener;

    .line 617
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 620
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$SaveModelRunnable;->this$0:Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;

    iget-object v1, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$SaveModelRunnable;->mListener:Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnSaveModelListener;

    invoke-virtual {v0, v1}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->saveModel(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnSaveModelListener;)V

    .line 621
    return-void
.end method
