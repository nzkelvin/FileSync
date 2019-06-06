.class public interface abstract Lnz/co/jsalibrary/android/widget/JSAFilePicker$Listener;
.super Ljava/lang/Object;
.source "JSAFilePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/JSAFilePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCurrentDirectoryChange(Ljava/io/File;)V
.end method

.method public abstract onDirectoryPick(Ljava/io/File;)V
.end method

.method public abstract onFilePick(Ljava/io/File;)V
.end method
