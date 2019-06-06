.class public interface abstract Lnz/co/jsalibrary/android/event/JSAICompositeEventListener;
.super Ljava/lang/Object;
.source "JSAICompositeEventListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lnz/co/jsalibrary/android/event/events/JSAEvent;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract isListenerRegistered(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<TE;>;)Z"
        }
    .end annotation
.end method

.method public abstract registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<TE;>;)Z"
        }
    .end annotation
.end method

.method public abstract registerListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<TE;>;Z)Z"
        }
    .end annotation
.end method

.method public abstract unregisterListener(Lnz/co/jsalibrary/android/event/JSAOnEventListener;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz/co/jsalibrary/android/event/JSAOnEventListener",
            "<TE;>;)Z"
        }
    .end annotation
.end method
