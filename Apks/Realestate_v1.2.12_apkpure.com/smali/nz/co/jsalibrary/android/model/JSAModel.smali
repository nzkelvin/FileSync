.class public abstract Lnz/co/jsalibrary/android/model/JSAModel;
.super Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;
.source "JSAModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/model/JSAModel$Trojan;,
        Lnz/co/jsalibrary/android/model/JSAModel$SimpleEventDispatchListener;,
        Lnz/co/jsalibrary/android/model/JSAModel$IgnoreEventMethods;,
        Lnz/co/jsalibrary/android/model/JSAModel$EventMethod;,
        Lnz/co/jsalibrary/android/model/JSAModel$Event;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x347ed9c240ac33f1L


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected onLoadModelInto(Lnz/co/jsalibrary/android/model/JSAModel;Ljava/util/Set;)Ljava/util/List;
    .locals 1
    .param p1, "loadedModel"    # Lnz/co/jsalibrary/android/model/JSAModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/model/JSAModel;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p2, "recordedDispatchedEvents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final onLoadModelInto(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;Ljava/util/Set;)Ljava/util/List;
    .locals 2
    .param p1, "loadedModel"    # Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p2, "recordedDispatchedEvents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v1, p1

    check-cast v1, Lnz/co/jsalibrary/android/model/JSAModel;

    invoke-virtual {p0, v1, p2}, Lnz/co/jsalibrary/android/model/JSAModel;->onLoadModelInto(Lnz/co/jsalibrary/android/model/JSAModel;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    .line 71
    .local v0, "dispatchEvents":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->onLoadModelInto(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    .line 72
    :cond_0
    return-object v0
.end method

.method public bridge synthetic registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;Z)Z
    .locals 1

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize;->registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;Z)Z

    move-result v0

    return v0
.end method
