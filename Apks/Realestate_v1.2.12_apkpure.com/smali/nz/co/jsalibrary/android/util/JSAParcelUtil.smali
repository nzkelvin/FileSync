.class public Lnz/co/jsalibrary/android/util/JSAParcelUtil;
.super Ljava/lang/Object;
.source "JSAParcelUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readBoolean(Landroid/os/Parcel;)Z
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readCalendar(Landroid/os/Parcel;)Ljava/util/Calendar;
    .locals 6
    .param p0, "parcel"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 87
    .local v2, "date":J
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    .line 88
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 89
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method public static readCharSequence(Landroid/os/Parcel;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 163
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static readCharSequenceArray(Landroid/os/Parcel;)[Ljava/lang/CharSequence;
    .locals 4
    .param p0, "parcel"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 204
    .local v2, "length":I
    if-gez v2, :cond_1

    const/4 v0, 0x0

    .line 208
    :cond_0
    return-object v0

    .line 205
    :cond_1
    new-array v0, v2, [Ljava/lang/CharSequence;

    .line 206
    .local v0, "array":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 207
    invoke-static {p0}, Lnz/co/jsalibrary/android/util/JSAParcelUtil;->readCharSequence(Landroid/os/Parcel;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v1

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static readDate(Landroid/os/Parcel;)Ljava/util/Date;
    .locals 4
    .param p0, "parcel"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 128
    .local v0, "date":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 129
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public static readList(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "parcel"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "loader"    # Ljava/lang/ClassLoader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 353
    .local v0, "length":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x0

    .line 356
    :goto_0
    return-object v1

    .line 354
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 355
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-virtual {p0, v1, p1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method public static readStringParcelableMap(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/util/HashMap;
    .locals 6
    .param p0, "parcel"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "loader"    # Ljava/lang/ClassLoader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 301
    .local v2, "length":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    const/4 v3, 0x0

    .line 309
    :cond_0
    return-object v3

    .line 302
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 303
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 304
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    .line 306
    .local v4, "value":Landroid/os/Parcelable;, "TT;"
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static readStringStringMap(Landroid/os/Parcel;)Ljava/util/HashMap;
    .locals 6
    .param p0, "parcel"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 249
    .local v2, "length":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    const/4 v3, 0x0

    .line 257
    :cond_0
    return-object v3

    .line 250
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 251
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 252
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 254
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static writeBoolean(Landroid/os/Parcel;Z)V
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "b"    # Z

    .prologue
    .line 32
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 33
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static writeCalendar(Landroid/os/Parcel;Ljava/util/Calendar;)V
    .locals 2
    .param p0, "parcel"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "calendar"    # Ljava/util/Calendar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 67
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 68
    return-void

    .line 67
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static writeCharSequence(Landroid/os/Parcel;Ljava/lang/CharSequence;I)V
    .locals 0
    .param p0, "parcel"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 146
    invoke-static {p1, p0, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 147
    return-void
.end method

.method public static writeCharSequenceArray(Landroid/os/Parcel;[Ljava/lang/CharSequence;I)V
    .locals 3
    .param p0, "parcel"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "array"    # [Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 180
    if-eqz p1, :cond_0

    .line 181
    array-length v1, p1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 183
    .local v0, "seq":Ljava/lang/CharSequence;
    invoke-static {p0, v0, p2}, Lnz/co/jsalibrary/android/util/JSAParcelUtil;->writeCharSequence(Landroid/os/Parcel;Ljava/lang/CharSequence;I)V

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    .end local v0    # "seq":Ljava/lang/CharSequence;
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    :cond_1
    return-void
.end method

.method public static writeDate(Landroid/os/Parcel;Ljava/util/Date;)V
    .locals 2
    .param p0, "parcel"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "date"    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 108
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    return-void

    .line 108
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static writeList(Landroid/os/Parcel;Ljava/util/List;)V
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 333
    :cond_0
    return-void

    .line 331
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static writeStringParcelableMap(Landroid/os/Parcel;Ljava/util/Map;I)V
    .locals 4
    .param p0, "parcel"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    :goto_0
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    if-nez p1, :cond_2

    .line 283
    :cond_0
    return-void

    .line 275
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 278
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 279
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;TT;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 280
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TT;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_1
.end method

.method public static writeStringStringMap(Landroid/os/Parcel;Ljava/util/Map;I)V
    .locals 4
    .param p0, "parcel"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    :goto_0
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    if-nez p1, :cond_2

    .line 232
    :cond_0
    return-void

    .line 224
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 227
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 228
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 229
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1
.end method
