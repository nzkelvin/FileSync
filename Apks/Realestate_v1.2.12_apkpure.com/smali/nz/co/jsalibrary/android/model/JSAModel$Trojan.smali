.class public Lnz/co/jsalibrary/android/model/JSAModel$Trojan;
.super Ljava/lang/Object;
.source "JSAModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/model/JSAModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Trojan"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadModelInto(Lnz/co/jsalibrary/android/model/JSAModel;Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;)V
    .locals 0
    .param p0, "model"    # Lnz/co/jsalibrary/android/model/JSAModel;
    .param p1, "listener"    # Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/model/JSAModel;->loadModelInto(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;)V

    .line 128
    return-void
.end method

.method public static loadModelIntoBackground(Lnz/co/jsalibrary/android/model/JSAModel;JLnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;)V
    .locals 1
    .param p0, "model"    # Lnz/co/jsalibrary/android/model/JSAModel;
    .param p1, "delay"    # J
    .param p3, "listener"    # Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;

    .prologue
    .line 133
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/jsalibrary/android/model/JSAModel;->loadModelIntoBackground(JLnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;)V

    .line 134
    return-void
.end method

.method public static loadModelIntoBackground(Lnz/co/jsalibrary/android/model/JSAModel;Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;)V
    .locals 0
    .param p0, "model"    # Lnz/co/jsalibrary/android/model/JSAModel;
    .param p1, "listener"    # Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/model/JSAModel;->loadModelIntoBackground(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnLoadModelIntoListener;)V

    .line 131
    return-void
.end method

.method public static registerEventDispatchListener(Lnz/co/jsalibrary/android/model/JSAModel;Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$EventDispatchListener;)V
    .locals 0
    .param p0, "model"    # Lnz/co/jsalibrary/android/model/JSAModel;
    .param p1, "listener"    # Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$EventDispatchListener;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/model/JSAModel;->registerEventDispatchListener(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$EventDispatchListener;)V

    .line 143
    return-void
.end method

.method public static resetPersistentData(Lnz/co/jsalibrary/android/model/JSAModel;)V
    .locals 0
    .param p0, "model"    # Lnz/co/jsalibrary/android/model/JSAModel;

    .prologue
    .line 136
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/model/JSAModel;->resetPersistentData()V

    .line 137
    return-void
.end method

.method public static resetPersistentData(Lnz/co/jsalibrary/android/model/JSAModel;Ljava/util/Set;)V
    .locals 0
    .param p0, "model"    # Lnz/co/jsalibrary/android/model/JSAModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/model/JSAModel;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "exclusions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/model/JSAModel;->resetPersistentData(Ljava/util/Set;)V

    .line 140
    return-void
.end method

.method public static runOnBackgroundThread(Lnz/co/jsalibrary/android/model/JSAModel;Ljava/lang/Runnable;)Z
    .locals 1
    .param p0, "model"    # Lnz/co/jsalibrary/android/model/JSAModel;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/model/JSAModel;->runOnBackgroundThread(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public static saveModel(Lnz/co/jsalibrary/android/model/JSAModel;Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnSaveModelListener;)V
    .locals 0
    .param p0, "model"    # Lnz/co/jsalibrary/android/model/JSAModel;
    .param p1, "listener"    # Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnSaveModelListener;

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/model/JSAModel;->saveModel(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$OnSaveModelListener;)V

    .line 125
    return-void
.end method

.method public static unregisterEventDispatchListener(Lnz/co/jsalibrary/android/model/JSAModel;Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$EventDispatchListener;)V
    .locals 0
    .param p0, "model"    # Lnz/co/jsalibrary/android/model/JSAModel;
    .param p1, "listener"    # Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$EventDispatchListener;

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/model/JSAModel;->unregisterEventDispatchListener(Lnz/co/jsalibrary/android/model/JSAModelBaseSerialize$EventDispatchListener;)V

    .line 146
    return-void
.end method
