.class public final Lnz/co/jsalibrary/android/util/JSAResourceUtil;
.super Ljava/lang/Object;
.source "JSAResourceUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraintResolveType;,
        Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;,
        Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;,
        Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceIdAttributeResourceValueResolver;,
        Lnz/co/jsalibrary/android/util/JSAResourceUtil$FloatAttributeResourceValueResolver;,
        Lnz/co/jsalibrary/android/util/JSAResourceUtil$BooleanAttributeResourceValueResolver;,
        Lnz/co/jsalibrary/android/util/JSAResourceUtil$IntegerAttributeResourceValueResolver;,
        Lnz/co/jsalibrary/android/util/JSAResourceUtil$StringAttributeResourceValueResolver;,
        Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceAttributeValueResolver;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "a"

.field private static final B:Ljava/lang/String; = "b"

.field private static final C:Ljava/lang/String; = "c"

.field private static final ITEM:Ljava/lang/String; = "item"

.field private static final MAP_ARRAY:Ljava/lang/String; = "map-array"

.field private static final NAME:Ljava/lang/String; = "name"

.field public static final RESOURCE_IDENTIFIER_TYPE_DRAWABLE:Ljava/lang/String; = "drawable"

.field public static final RESOURCE_IDENTIFIER_TYPE_ID:Ljava/lang/String; = "id"

.field public static final RESOURCE_IDENTIFIER_TYPE_STRING:Ljava/lang/String; = "string"

.field private static final RESOURCE_MAP_ARRAY:Ljava/lang/String; = "resource-map-array"

.field private static final RESOURCE_TRIPLE_ARRAY:Ljava/lang/String; = "resource-triple-array"

.field private static final RESOURCE_TUPLE_ARRAY:Ljava/lang/String; = "resource-tuple-array"

.field private static final STRING_MAP_ARRAY:Ljava/lang/String; = "string-map-array"

.field private static final STRING_TRIPLE_ARRAY:Ljava/lang/String; = "string-triple-array"

.field private static final STRING_TUPLE_ARRAY:Ljava/lang/String; = "string-tuple-array"

.field private static final TRIPLE_ARRAY:Ljava/lang/String; = "triple-array"

.field private static final TUPLE_ARRAY:Ljava/lang/String; = "tuple-array"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAssetResource(Landroid/content/Context;Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 815
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    .line 816
    .local v1, "stream":Ljava/io/InputStream;
    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->readFileStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 818
    .end local v1    # "stream":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 817
    :catch_0
    move-exception v0

    .line 818
    .local v0, "exception":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getDrawableResource(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 772
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->getDrawableResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawableResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 777
    invoke-static {p0, p1, p2}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->getDrawableResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 778
    .local v0, "resId":I
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDrawableResourceId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 787
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->getDrawableResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDrawableResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 792
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {v0, p2, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getFloatResource(Landroid/content/Context;I)F
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 877
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static getRawResource(Landroid/content/Context;I)Ljava/io/ByteArrayOutputStream;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 802
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->readFileStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 804
    :goto_0
    return-object v1

    .line 803
    :catch_0
    move-exception v0

    .line 804
    .local v0, "exception":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getStringResourceByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 757
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->getStringResourceByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringResourceByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 762
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v1, p2, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 763
    .local v0, "resId":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseMapArray(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resource"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->parseMapArray(Landroid/content/res/Resources;ILjava/lang/String;Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static parseMapArray(Landroid/content/res/Resources;ILjava/lang/String;Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;)Ljava/util/List;
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resource"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "constraints"    # Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I",
            "Ljava/lang/String;",
            "Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 272
    const-string v0, "map-array"

    new-instance v1, Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p3, v2}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;-><init>(Landroid/content/res/Resources;Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;Lnz/co/jsalibrary/android/util/JSAResourceUtil$1;)V

    invoke-static {p0, p1, v0, p2, v1}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->parseResourceMapArray(Landroid/content/res/Resources;ILjava/lang/String;Ljava/lang/String;Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceAttributeValueResolver;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static parseResourceIdMapArray(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resource"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 218
    const-string v0, "resource-map-array"

    new-instance v1, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceIdAttributeResourceValueResolver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceIdAttributeResourceValueResolver;-><init>(Lnz/co/jsalibrary/android/util/JSAResourceUtil$1;)V

    invoke-static {p0, p1, v0, p2, v1}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->parseResourceMapArray(Landroid/content/res/Resources;ILjava/lang/String;Ljava/lang/String;Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceAttributeValueResolver;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static parseResourceIdTripleArray(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resource"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATriple",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 203
    const-string v3, "resource-triple-array"

    new-instance v4, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceIdAttributeResourceValueResolver;

    invoke-direct {v4, v0}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceIdAttributeResourceValueResolver;-><init>(Lnz/co/jsalibrary/android/util/JSAResourceUtil$1;)V

    invoke-static {p0, p1, v3, p2, v4}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->parseResourceMapArray(Landroid/content/res/Resources;ILjava/lang/String;Ljava/lang/String;Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceAttributeValueResolver;)Ljava/util/List;

    move-result-object v2

    .line 206
    .local v2, "mappedList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    if-nez v2, :cond_1

    .line 210
    :cond_0
    return-object v0

    .line 207
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATriple<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 209
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v4, Lnz/co/jsalibrary/android/tuple/JSATriple;

    const-string v5, "a"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "b"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "c"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lnz/co/jsalibrary/android/tuple/JSATriple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static parseResourceIdTupleArray(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resource"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 188
    const-string v3, "resource-tuple-array"

    new-instance v4, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceIdAttributeResourceValueResolver;

    invoke-direct {v4, v0}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceIdAttributeResourceValueResolver;-><init>(Lnz/co/jsalibrary/android/util/JSAResourceUtil$1;)V

    invoke-static {p0, p1, v3, p2, v4}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->parseResourceMapArray(Landroid/content/res/Resources;ILjava/lang/String;Ljava/lang/String;Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceAttributeValueResolver;)Ljava/util/List;

    move-result-object v2

    .line 191
    .local v2, "mappedList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    if-nez v2, :cond_1

    .line 195
    :cond_0
    return-object v0

    .line 192
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 194
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v4, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v5, "a"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "b"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static parseResourceMapArray(Landroid/content/res/Resources;ILjava/lang/String;Ljava/lang/String;Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceAttributeValueResolver;)Ljava/util/List;
    .locals 11
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resource"    # I
    .param p2, "resourceTag"    # Ljava/lang/String;
    .param p3, "resourceTagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/res/Resources;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceAttributeValueResolver",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;>;"
        }
    .end annotation

    .prologue
    .line 283
    .local p4, "resolver":Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceAttributeValueResolver;, "Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceAttributeValueResolver<TT;>;"
    if-eqz p0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v6, 0x0

    .line 330
    :goto_0
    return-object v6

    .line 284
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 285
    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v5, 0x0

    .line 288
    .local v5, "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    :try_start_0
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    .line 289
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    .local v1, "eventType":I
    move-object v6, v5

    .end local v5    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    .local v6, "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    :goto_1
    const/4 v9, 0x1

    if-eq v1, v9, :cond_6

    .line 290
    packed-switch v1, :pswitch_data_0

    :cond_2
    move-object v5, v6

    .line 289
    .end local v6    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    .restart local v5    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    :goto_2
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move-object v6, v5

    .end local v5    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    .restart local v6    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    goto :goto_1

    .line 295
    :pswitch_0
    :try_start_1
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 296
    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {v8, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 297
    .local v7, "nameAttribute":Ljava/lang/String;
    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    move-object v5, v6

    .end local v6    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    .restart local v5    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    goto :goto_2

    .line 298
    .end local v5    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    .restart local v6    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .end local v6    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    .restart local v5    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    goto :goto_2

    .line 303
    .end local v5    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    .end local v7    # "nameAttribute":Ljava/lang/String;
    .restart local v6    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    :cond_4
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "item"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v6, :cond_2

    .line 304
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 305
    .local v4, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v9

    if-ge v3, v9, :cond_5

    .line 306
    invoke-interface {v8, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "attributeName":Ljava/lang/String;
    invoke-interface {p4, v0, v8, v3}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceAttributeValueResolver;->resolveValue(Ljava/lang/String;Landroid/content/res/XmlResourceParser;I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v4, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 309
    .end local v0    # "attributeName":Ljava/lang/String;
    :cond_5
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v5, v6

    .line 310
    .end local v6    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    .restart local v5    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    goto :goto_2

    .line 318
    .end local v3    # "i":I
    .end local v4    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    .end local v5    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    .restart local v6    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    :pswitch_1
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v6, :cond_2

    goto :goto_0

    .line 324
    :cond_6
    const/4 v6, 0x0

    goto :goto_0

    .line 325
    .end local v1    # "eventType":I
    .end local v6    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    .restart local v5    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    :catch_0
    move-exception v2

    .line 326
    .local v2, "exception":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error parsing xml resource: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 327
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 328
    .end local v2    # "exception":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v2

    .line 329
    .local v2, "exception":Ljava/io/IOException;
    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error parsing xml resource: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 330
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 328
    .end local v2    # "exception":Ljava/io/IOException;
    .end local v5    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    .restart local v1    # "eventType":I
    .restart local v6    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    :catch_2
    move-exception v2

    move-object v5, v6

    .end local v6    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    .restart local v5    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    goto :goto_5

    .line 325
    .end local v5    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    .restart local v6    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    :catch_3
    move-exception v2

    move-object v5, v6

    .end local v6    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    .restart local v5    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;TT;>;>;"
    goto :goto_4

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parseStringMapArray(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resource"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 180
    const-string v0, "string-map-array"

    new-instance v1, Lnz/co/jsalibrary/android/util/JSAResourceUtil$StringAttributeResourceValueResolver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$StringAttributeResourceValueResolver;-><init>(Lnz/co/jsalibrary/android/util/JSAResourceUtil$1;)V

    invoke-static {p0, p1, v0, p2, v1}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->parseResourceMapArray(Landroid/content/res/Resources;ILjava/lang/String;Ljava/lang/String;Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceAttributeValueResolver;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static parseStringTripleArray(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resource"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATriple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 165
    const-string v3, "string-triple-array"

    new-instance v4, Lnz/co/jsalibrary/android/util/JSAResourceUtil$StringAttributeResourceValueResolver;

    invoke-direct {v4, v0}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$StringAttributeResourceValueResolver;-><init>(Lnz/co/jsalibrary/android/util/JSAResourceUtil$1;)V

    invoke-static {p0, p1, v3, p2, v4}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->parseResourceMapArray(Landroid/content/res/Resources;ILjava/lang/String;Ljava/lang/String;Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceAttributeValueResolver;)Ljava/util/List;

    move-result-object v2

    .line 168
    .local v2, "mappedList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez v2, :cond_1

    .line 172
    :cond_0
    return-object v0

    .line 169
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATriple<Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 171
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Lnz/co/jsalibrary/android/tuple/JSATriple;

    const-string v5, "a"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "b"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "c"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lnz/co/jsalibrary/android/tuple/JSATriple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static parseStringTupleArray(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resource"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 150
    const-string v3, "string-tuple-array"

    new-instance v4, Lnz/co/jsalibrary/android/util/JSAResourceUtil$StringAttributeResourceValueResolver;

    invoke-direct {v4, v0}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$StringAttributeResourceValueResolver;-><init>(Lnz/co/jsalibrary/android/util/JSAResourceUtil$1;)V

    invoke-static {p0, p1, v3, p2, v4}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->parseResourceMapArray(Landroid/content/res/Resources;ILjava/lang/String;Ljava/lang/String;Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceAttributeValueResolver;)Ljava/util/List;

    move-result-object v2

    .line 153
    .local v2, "mappedList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez v2, :cond_1

    .line 157
    :cond_0
    return-object v0

    .line 154
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 156
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v5, "a"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "b"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static parseTripleArray(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resource"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATriple",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->parseTripleArray(Landroid/content/res/Resources;ILjava/lang/String;Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static parseTripleArray(Landroid/content/res/Resources;ILjava/lang/String;Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;)Ljava/util/List;
    .locals 8
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resource"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "constraints"    # Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I",
            "Ljava/lang/String;",
            "Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATriple",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 253
    const-string v3, "triple-array"

    new-instance v4, Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;

    invoke-direct {v4, p0, p3, v0}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;-><init>(Landroid/content/res/Resources;Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;Lnz/co/jsalibrary/android/util/JSAResourceUtil$1;)V

    invoke-static {p0, p1, v3, p2, v4}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->parseResourceMapArray(Landroid/content/res/Resources;ILjava/lang/String;Ljava/lang/String;Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceAttributeValueResolver;)Ljava/util/List;

    move-result-object v2

    .line 256
    .local v2, "mappedList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-nez v2, :cond_1

    .line 260
    :cond_0
    return-object v0

    .line 257
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATriple<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 259
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Lnz/co/jsalibrary/android/tuple/JSATriple;

    const-string v5, "a"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "b"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "c"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lnz/co/jsalibrary/android/tuple/JSATriple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static parseTupleArray(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resource"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->parseTupleArray(Landroid/content/res/Resources;ILjava/lang/String;Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static parseTupleArray(Landroid/content/res/Resources;ILjava/lang/String;Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;)Ljava/util/List;
    .locals 7
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resource"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "constraints"    # Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I",
            "Ljava/lang/String;",
            "Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 232
    const-string v3, "tuple-array"

    new-instance v4, Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;

    invoke-direct {v4, p0, p3, v0}, Lnz/co/jsalibrary/android/util/JSAResourceUtil$BestMatchAttributeResourceValueResolver;-><init>(Landroid/content/res/Resources;Lnz/co/jsalibrary/android/util/JSAResourceUtil$ParseConstraints;Lnz/co/jsalibrary/android/util/JSAResourceUtil$1;)V

    invoke-static {p0, p1, v3, p2, v4}, Lnz/co/jsalibrary/android/util/JSAResourceUtil;->parseResourceMapArray(Landroid/content/res/Resources;ILjava/lang/String;Ljava/lang/String;Lnz/co/jsalibrary/android/util/JSAResourceUtil$ResourceAttributeValueResolver;)Ljava/util/List;

    move-result-object v2

    .line 235
    .local v2, "mappedList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-nez v2, :cond_1

    .line 239
    :cond_0
    return-object v0

    .line 236
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 238
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v4, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v5, "a"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "b"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static resolveThemeAttribute(Landroid/content/Context;I)Landroid/util/TypedValue;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrId"    # I

    .prologue
    .line 853
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 854
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 855
    return-object v0
.end method
