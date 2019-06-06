.class public interface abstract Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinListener;
.super Ljava/lang/Object;
.source "JSAPinEntryWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PinListener"
.end annotation


# virtual methods
.method public abstract onPinEntryFailed(Lnz/co/jsalibrary/android/widget/JSAPinEntryWidget$PinFailureType;Ljava/lang/String;)V
.end method

.method public abstract onPinEntrySucceeded(Ljava/lang/String;)V
.end method

.method public abstract validatePin(Ljava/lang/String;)Z
.end method
