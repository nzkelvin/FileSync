.class public Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
.super Ljava/lang/Object;
.source "RESListing.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/realestate/android/lib/eo/server/object/RESListing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyPropertyListing"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x320ebad78ee5f1eL


# instance fields
.field public comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;",
            ">;"
        }
    .end annotation
.end field

.field public listing:Lnz/co/realestate/android/lib/eo/server/object/RESListing$FullListing;

.field public listing_id:I

.field public photos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;",
            ">;"
        }
    .end annotation
.end field

.field public ratings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;",
            ">;"
        }
    .end annotation
.end field

.field public updated_at:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "listingId"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    .line 55
    return-void
.end method


# virtual methods
.method public addComment(Ljava/lang/String;I)V
    .locals 2
    .param p1, "comment"    # Ljava/lang/String;
    .param p2, "categoryId"    # I

    .prologue
    .line 105
    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->comments:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->comments:Ljava/util/List;

    .line 106
    :cond_0
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;-><init>()V

    .line 107
    .local v0, "c":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
    iput p2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->category:I

    .line 108
    iput-object p1, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->comment:Ljava/lang/String;

    .line 109
    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->comments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public addPhoto(Ljava/lang/String;I)V
    .locals 2
    .param p1, "photo"    # Ljava/lang/String;
    .param p2, "categoryId"    # I

    .prologue
    .line 126
    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->photos:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->photos:Ljava/util/List;

    .line 127
    :cond_0
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;-><init>()V

    .line 128
    .local v0, "p":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;
    iput p2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;->category:I

    .line 129
    iput-object p1, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;->file_url:Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->photos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public deleteComment(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "categoryId"    # I

    .prologue
    .line 120
    invoke-virtual {p0, p2}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->getComments(I)Ljava/util/List;

    move-result-object v0

    .line 121
    .local v0, "comments":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;>;"
    if-ltz p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 122
    :cond_1
    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->comments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method public deletePhoto(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "categoryId"    # I

    .prologue
    .line 141
    invoke-virtual {p0, p2}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->getPhotos(I)Ljava/util/List;

    move-result-object v0

    .line 142
    .local v0, "photos":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;>;"
    if-ltz p1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 143
    :cond_1
    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->photos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 66
    instance-of v2, p1, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    if-nez v2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 67
    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;

    .line 68
    .local v0, "listing":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;
    iget v2, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    iget v3, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getComments(I)Ljava/util/List;
    .locals 4
    .param p1, "categoryId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->comments:Ljava/util/List;

    if-nez v2, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    :cond_0
    return-object v1

    .line 83
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;>;"
    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->comments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    .local v0, "comment":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
    iget v3, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->category:I

    if-ne v3, p1, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getPhotos(I)Ljava/util/List;
    .locals 4
    .param p1, "categoryId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->photos:Ljava/util/List;

    if-nez v2, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    :cond_0
    return-object v1

    .line 90
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;>;"
    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->photos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;

    .local v0, "photo":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;
    iget v3, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;->category:I

    if-ne v3, p1, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getRating(I)Ljava/lang/Integer;
    .locals 4
    .param p1, "categoryId"    # I

    .prologue
    const/4 v1, 0x0

    .line 76
    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->ratings:Ljava/util/List;

    if-nez v2, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-object v1

    .line 77
    :cond_1
    iget-object v2, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->ratings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;

    .local v0, "rating":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;
    iget v3, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->category:I

    if-ne v3, p1, :cond_2

    iget v1, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->rating:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getUpdateTime()Ljava/util/Date;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->updated_at:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/util/RESListingUtil;->decodeDate(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->listing_id:I

    return v0
.end method

.method public setRating(II)V
    .locals 3
    .param p1, "rating"    # I
    .param p2, "categoryId"    # I

    .prologue
    .line 96
    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->ratings:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->ratings:Ljava/util/List;

    .line 97
    :cond_0
    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->ratings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;

    .local v0, "r":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;
    iget v2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->category:I

    if-ne v2, p2, :cond_1

    iput p1, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->rating:I

    .line 102
    :goto_0
    return-void

    .line 98
    .end local v0    # "r":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;
    :cond_2
    new-instance v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;

    invoke-direct {v0}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;-><init>()V

    .line 99
    .restart local v0    # "r":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;
    iput p2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->category:I

    .line 100
    iput p1, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyRating;->rating:I

    .line 101
    iget-object v1, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->ratings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setUpdateTime(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 62
    if-eqz p1, :cond_0

    invoke-static {p1}, Lnz/co/realestate/android/lib/util/RESListingUtil;->encodeDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->updated_at:Ljava/lang/String;

    .line 63
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateComment(ILjava/lang/String;I)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "categoryId"    # I

    .prologue
    .line 113
    invoke-virtual {p0, p3}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->getComments(I)Ljava/util/List;

    move-result-object v1

    .line 114
    .local v1, "comments":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;>;"
    if-ltz p1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 115
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;

    .line 116
    .local v0, "c":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;
    iput-object p2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyComment;->comment:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public updatePhoto(ILjava/lang/String;I)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "photo"    # Ljava/lang/String;
    .param p3, "categoryId"    # I

    .prologue
    .line 134
    invoke-virtual {p0, p3}, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyListing;->getPhotos(I)Ljava/util/List;

    move-result-object v1

    .line 135
    .local v1, "photos":Ljava/util/List;, "Ljava/util/List<Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;>;"
    if-ltz p1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 136
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;

    .line 137
    .local v0, "p":Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;
    iput-object p2, v0, Lnz/co/realestate/android/lib/eo/server/object/RESListing$MyPropertyPhoto;->file_url:Ljava/lang/String;

    .line 138
    return-void
.end method
