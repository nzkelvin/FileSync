.class public Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;
.super Lnz/co/jsalibrary/android/event/events/JSAEvent;
.source "JSADialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogEvent"
.end annotation


# static fields
.field public static final EVENT_CANCEL:Ljava/lang/String; = "cancel"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EVENT_NEUTRAL:Ljava/lang/String; = "neutral"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EVENT_OK:Ljava/lang/String; = "ok"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EVENT_TYPE_CANCEL:I = 0x3

.field public static final EVENT_TYPE_NEGATIVE:I = 0x1

.field public static final EVENT_TYPE_NEUTRAL:I = 0x2

.field public static final EVENT_TYPE_POSITIVE:I


# instance fields
.field private final mDialog:Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mEventType:I

.field private final mLegacyType:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lnz/co/jsalibrary/android/widget/dialog/JSADialog;ILjava/lang/String;)V
    .locals 0
    .param p1, "dialog"    # Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "eventType"    # I
    .param p3, "legacyType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 188
    invoke-direct {p0}, Lnz/co/jsalibrary/android/event/events/JSAEvent;-><init>()V

    .line 189
    iput-object p1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;->mDialog:Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    .line 190
    iput p2, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;->mEventType:I

    .line 191
    iput-object p3, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;->mLegacyType:Ljava/lang/String;

    .line 192
    return-void
.end method


# virtual methods
.method public getDialog()Lnz/co/jsalibrary/android/widget/dialog/JSADialog;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;->mDialog:Lnz/co/jsalibrary/android/widget/dialog/JSADialog;

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;->mEventType:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;->mLegacyType:Ljava/lang/String;

    return-object v0
.end method

.method public isCancel()Z
    .locals 2

    .prologue
    .line 221
    iget v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;->mEventType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNegative()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 213
    iget v1, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;->mEventType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeutral()Z
    .locals 2

    .prologue
    .line 217
    iget v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;->mEventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPositive()Z
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lnz/co/jsalibrary/android/widget/dialog/JSADialog$DialogEvent;->mEventType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
