.class public Lnz/co/jsalibrary/android/event/events/JSAObjectEvent;
.super Lnz/co/jsalibrary/android/event/events/JSAEvent;
.source "JSAObjectEvent.java"


# instance fields
.field private mDetails:Ljava/lang/Object;

.field private mTarget:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnz/co/jsalibrary/android/event/events/JSAObjectEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "details"    # Ljava/lang/Object;

    .prologue
    .line 15
    invoke-direct {p0}, Lnz/co/jsalibrary/android/event/events/JSAEvent;-><init>()V

    .line 16
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 17
    :cond_0
    iput-object p1, p0, Lnz/co/jsalibrary/android/event/events/JSAObjectEvent;->mTarget:Ljava/lang/Object;

    .line 18
    iput-object p2, p0, Lnz/co/jsalibrary/android/event/events/JSAObjectEvent;->mDetails:Ljava/lang/Object;

    .line 19
    return-void
.end method


# virtual methods
.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 7
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/event/events/JSAObjectEvent;->clone()Lnz/co/jsalibrary/android/event/events/JSAObjectEvent;

    move-result-object v0

    return-object v0
.end method

.method protected clone()Lnz/co/jsalibrary/android/event/events/JSAObjectEvent;
    .locals 2

    .prologue
    .line 31
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/event/events/JSAObjectEvent;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 38
    instance-of v0, p1, Lnz/co/jsalibrary/android/event/events/JSAObjectEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lnz/co/jsalibrary/android/event/events/JSAObjectEvent;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lnz/co/jsalibrary/android/event/events/JSAObjectEvent;->mTarget:Ljava/lang/Object;

    iget-object v1, p0, Lnz/co/jsalibrary/android/event/events/JSAObjectEvent;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 40
    :goto_0
    return v0

    .line 39
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lnz/co/jsalibrary/android/event/events/JSAObjectEvent;->mTarget:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDetails()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lnz/co/jsalibrary/android/event/events/JSAObjectEvent;->mDetails:Ljava/lang/Object;

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lnz/co/jsalibrary/android/event/events/JSAObjectEvent;->mTarget:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 44
    iget-object v1, p0, Lnz/co/jsalibrary/android/event/events/JSAObjectEvent;->mTarget:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 45
    .local v0, "code":I
    iget-object v1, p0, Lnz/co/jsalibrary/android/event/events/JSAObjectEvent;->mDetails:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/event/events/JSAObjectEvent;->mDetails:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    :cond_0
    return v0
.end method
