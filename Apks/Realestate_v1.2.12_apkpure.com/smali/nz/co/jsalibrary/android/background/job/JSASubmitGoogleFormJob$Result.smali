.class public Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;
.super Ljava/lang/Object;
.source "JSASubmitGoogleFormJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private final mRowSuccess:[Z

.field private final mSuccess:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;-><init>(Z[Z)V

    .line 178
    return-void
.end method

.method public constructor <init>(Z[Z)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "rowSuccess"    # [Z

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-boolean p1, p0, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;->mSuccess:Z

    .line 182
    iput-object p2, p0, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;->mRowSuccess:[Z

    .line 183
    return-void
.end method

.method static synthetic access$100(Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;)Z
    .locals 1
    .param p0, "x0"    # Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;

    .prologue
    .line 172
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;->mSuccess:Z

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 200
    instance-of v2, p1, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;

    if-nez v2, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 201
    check-cast v0, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;

    .line 202
    .local v0, "result":Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;
    iget-boolean v2, v0, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;->mSuccess:Z

    iget-boolean v3, p0, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;->mSuccess:Z

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;->mRowSuccess:[Z

    iget-object v3, p0, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;->mRowSuccess:[Z

    invoke-static {v2, v3}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getRowSuccess()[Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;->mRowSuccess:[Z

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 194
    iget-boolean v1, p0, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;->mSuccess:Z

    if-eqz v1, :cond_0

    const/16 v0, 0x64

    .line 195
    .local v0, "code":I
    :goto_0
    iget-object v1, p0, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;->mRowSuccess:[Z

    if-nez v1, :cond_1

    .line 196
    .end local v0    # "code":I
    :goto_1
    return v0

    .line 194
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 196
    .restart local v0    # "code":I
    :cond_1
    iget-object v1, p0, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;->mRowSuccess:[Z

    array-length v1, v1

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;->mSuccess:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;->mSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnz/co/jsalibrary/android/background/job/JSASubmitGoogleFormJob$Result;->mRowSuccess:[Z

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
