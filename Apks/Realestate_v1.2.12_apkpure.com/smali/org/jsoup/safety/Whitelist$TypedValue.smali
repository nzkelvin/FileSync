.class abstract Lorg/jsoup/safety/Whitelist$TypedValue;
.super Ljava/lang/Object;
.source "Whitelist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/safety/Whitelist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "TypedValue"
.end annotation


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 391
    iput-object p1, p0, Lorg/jsoup/safety/Whitelist$TypedValue;->value:Ljava/lang/String;

    .line 392
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 404
    if-ne p0, p1, :cond_1

    .line 411
    :cond_0
    :goto_0
    return v1

    .line 405
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 406
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 407
    check-cast v0, Lorg/jsoup/safety/Whitelist$TypedValue;

    .line 408
    .local v0, "other":Lorg/jsoup/safety/Whitelist$TypedValue;
    iget-object v3, p0, Lorg/jsoup/safety/Whitelist$TypedValue;->value:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 409
    iget-object v3, v0, Lorg/jsoup/safety/Whitelist$TypedValue;->value:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 410
    :cond_4
    iget-object v3, p0, Lorg/jsoup/safety/Whitelist$TypedValue;->value:Ljava/lang/String;

    iget-object v4, v0, Lorg/jsoup/safety/Whitelist$TypedValue;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 396
    const/16 v0, 0x1f

    .line 397
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 398
    .local v1, "result":I
    iget-object v2, p0, Lorg/jsoup/safety/Whitelist$TypedValue;->value:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 399
    return v1

    .line 398
    :cond_0
    iget-object v2, p0, Lorg/jsoup/safety/Whitelist$TypedValue;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lorg/jsoup/safety/Whitelist$TypedValue;->value:Ljava/lang/String;

    return-object v0
.end method
