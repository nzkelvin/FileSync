.class final Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder$4;
.super Ljava/lang/Object;
.source "JSAAlertDialogFragment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 408
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder$4;->createFromParcel(Landroid/os/Parcel;)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 414
    new-instance v0, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    invoke-direct {v0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 408
    invoke-virtual {p0, p1}, Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder$4;->newArray(I)[Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 410
    new-array v0, p1, [Lnz/co/jsalibrary/android/widget/dialog/JSAAlertDialogFragment$Builder;

    return-object v0
.end method
