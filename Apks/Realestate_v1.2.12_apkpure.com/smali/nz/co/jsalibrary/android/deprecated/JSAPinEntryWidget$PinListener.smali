.class public interface abstract Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget$PinListener;
.super Ljava/lang/Object;
.source "JSAPinEntryWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/deprecated/JSAPinEntryWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PinListener"
.end annotation


# virtual methods
.method public abstract onInvalidPin(Ljava/lang/String;)V
.end method

.method public abstract onPinConfirmFailed()V
.end method

.method public abstract onPinConfirmed(Ljava/lang/String;)V
.end method

.method public abstract onPinCreated(Ljava/lang/String;)V
.end method

.method public abstract onPinEntryFinished(Ljava/lang/String;)V
.end method

.method public abstract validatePin(Ljava/lang/String;)Z
.end method
