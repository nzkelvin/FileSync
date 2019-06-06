.class public Lnz/co/jsalibrary/android/model/JSAModel$SimpleEventDispatchListener;
.super Ljava/lang/Object;
.source "JSAModel.java"

# interfaces
.implements Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$EventDispatchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/model/JSAModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleEventDispatchListener"
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModel$SimpleEventDispatchListener;->mDispatchedEvents:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addDispatchedEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModel$SimpleEventDispatchListener;->mDispatchedEvents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
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
    .line 108
    iget-object v0, p0, Lnz/co/jsalibrary/android/model/JSAModel$SimpleEventDispatchListener;->mDispatchedEvents:Ljava/util/Set;

    return-object v0
.end method
