.class Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$2;
.super Ljava/lang/Object;
.source "JSAModelBaseSerialize.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->saveModel(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnSaveModelListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;

.field final synthetic val$exception:Ljava/lang/Exception;

.field final synthetic val$listener:Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnSaveModelListener;


# direct methods
.method constructor <init>(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnSaveModelListener;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;

    .prologue
    .line 434
    iput-object p1, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$2;->this$0:Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;

    iput-object p2, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$2;->val$listener:Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnSaveModelListener;

    iput-object p3, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$2;->val$exception:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 436
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$2;->val$listener:Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnSaveModelListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$2;->val$listener:Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnSaveModelListener;

    iget-object v1, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$2;->val$exception:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnSaveModelListener;->onSaveModelException(Ljava/lang/Exception;)V

    .line 438
    :goto_0
    return-void

    .line 437
    :cond_0
    const-string v0, "error saving model"

    iget-object v1, p0, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$2;->val$exception:Ljava/lang/Exception;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    goto :goto_0
.end method
