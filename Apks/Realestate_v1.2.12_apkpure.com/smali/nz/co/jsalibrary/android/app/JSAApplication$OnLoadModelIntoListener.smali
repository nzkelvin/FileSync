.class Lnz/co/jsalibrary/android/app/JSAApplication$OnLoadModelIntoListener;
.super Ljava/lang/Object;
.source "JSAApplication.java"

# interfaces
.implements Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/app/JSAApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnLoadModelIntoListener"
.end annotation


# instance fields
.field private final mDispatchedEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadId:I

.field final synthetic this$0:Lnz/co/jsalibrary/android/app/JSAApplication;


# direct methods
.method public constructor <init>(Lnz/co/jsalibrary/android/app/JSAApplication;I)V
    .locals 1
    .param p1, "this$0"    # Lnz/co/jsalibrary/android/app/JSAApplication;
    .param p2, "loadId"    # I

    .prologue
    .line 346
    iput-object p1, p0, Lnz/co/jsalibrary/android/app/JSAApplication$OnLoadModelIntoListener;->this$0:Lnz/co/jsalibrary/android/app/JSAApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication$OnLoadModelIntoListener;->mDispatchedEvents:Ljava/util/Set;

    .line 347
    iput p2, p0, Lnz/co/jsalibrary/android/app/JSAApplication$OnLoadModelIntoListener;->mLoadId:I

    .line 348
    return-void
.end method


# virtual methods
.method public addDispatchedEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 364
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication$OnLoadModelIntoListener;->mDispatchedEvents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 365
    return-void
.end method

.method public getDispatchedEvents()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication$OnLoadModelIntoListener;->mDispatchedEvents:Ljava/util/Set;

    return-object v0
.end method

.method public onLoadModelInto()Z
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lnz/co/jsalibrary/android/app/JSAApplication$OnLoadModelIntoListener;->this$0:Lnz/co/jsalibrary/android/app/JSAApplication;

    invoke-static {v0}, Lnz/co/jsalibrary/android/app/JSAApplication;->access$000(Lnz/co/jsalibrary/android/app/JSAApplication;)I

    move-result v0

    iget v1, p0, Lnz/co/jsalibrary/android/app/JSAApplication$OnLoadModelIntoListener;->mLoadId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLoadModelIntoComplete()V
    .locals 0

    .prologue
    .line 353
    return-void
.end method

.method public onLoadModelIntoException(Ljava/lang/Exception;Z)V
    .locals 4
    .param p1, "exception"    # Ljava/lang/Exception;
    .param p2, "modelFileExists"    # Z

    .prologue
    .line 356
    if-eqz p2, :cond_0

    const-string v0, "error loading model"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lnz/co/jsalibrary/android/app/JSAApplication;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p1, v1}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;[Ljava/lang/Class;)V

    .line 357
    :cond_0
    return-void
.end method
