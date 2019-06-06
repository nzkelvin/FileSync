.class synthetic Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$4;
.super Ljava/lang/Object;
.source "JSADirectedAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$nz$co$jsalibrary$android$os$JSADirectedAsyncTask$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 429
    invoke-static {}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;->values()[Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$4;->$SwitchMap$nz$co$jsalibrary$android$os$JSADirectedAsyncTask$Status:[I

    :try_start_0
    sget-object v0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$4;->$SwitchMap$nz$co$jsalibrary$android$os$JSADirectedAsyncTask$Status:[I

    sget-object v1, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;->RUNNING:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$4;->$SwitchMap$nz$co$jsalibrary$android$os$JSADirectedAsyncTask$Status:[I

    sget-object v1, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;->FINISHED:Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/os/JSADirectedAsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
