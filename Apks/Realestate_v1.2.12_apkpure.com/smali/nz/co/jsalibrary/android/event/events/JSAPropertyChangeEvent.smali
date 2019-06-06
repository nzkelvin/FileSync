.class public Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;
.super Lnz/co/jsalibrary/android/event/events/JSAEvent;
.source "JSAPropertyChangeEvent.java"


# instance fields
.field private mPropertyName:Ljava/lang/String;

.field private mValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 23
    invoke-direct {p0}, Lnz/co/jsalibrary/android/event/events/JSAEvent;-><init>()V

    .line 24
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 25
    :cond_0
    iput-object p1, p0, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->mPropertyName:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->mValue:Ljava/lang/Object;

    .line 27
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
    .line 15
    invoke-virtual {p0}, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->clone()Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    move-result-object v0

    return-object v0
.end method

.method protected clone()Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;
    .locals 5

    .prologue
    .line 43
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    .line 44
    .local v1, "event":Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;
    iget-object v3, v1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->mPropertyName:Ljava/lang/String;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/String;

    iget-object v4, v1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->mPropertyName:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v3, v1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->mPropertyName:Ljava/lang/String;

    .line 45
    :cond_0
    iget-object v3, v1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->mValue:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->mValue:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Cloneable;

    if-nez v3, :cond_2

    .line 48
    :cond_1
    :goto_0
    return-object v1

    .line 46
    :cond_2
    iget-object v3, v1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Cloneable;

    invoke-static {v3}, Lnz/co/jsalibrary/android/util/JSAObjectUtil;->cloneNoException(Ljava/lang/Cloneable;)Ljava/lang/Object;

    move-result-object v2

    .line 47
    .local v2, "valueClone":Ljava/lang/Object;
    if-eqz v2, :cond_1

    iput-object v2, v1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->mValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    .end local v1    # "event":Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;
    .end local v2    # "valueClone":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 55
    instance-of v0, p1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->mPropertyName:Ljava/lang/String;

    iget-object v1, p0, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 57
    :goto_0
    return v0

    .line 56
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p0, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->mPropertyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 57
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 61
    iget-object v1, p0, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 62
    .local v0, "code":I
    iget-object v1, p0, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->mValue:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->mValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnz/co/jsalibrary/android/event/events/JSAPropertyChangeEvent;->mValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
