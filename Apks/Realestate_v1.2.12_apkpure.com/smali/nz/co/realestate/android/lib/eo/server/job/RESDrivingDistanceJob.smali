.class public final Lnz/co/realestate/android/lib/eo/server/job/RESDrivingDistanceJob;
.super Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.source "RESDrivingDistanceJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final DESTINATION:Ljava/lang/String; = "destination"

.field private static final LISTING_ID:Ljava/lang/String; = "listingId"

.field private static final SOURCE:Ljava/lang/String; = "source"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;-><init>()V

    return-void
.end method

.method public static buildBundle(ILcom/google/android/gms/maps/model/LatLng;)Landroid/os/Bundle;
    .locals 6
    .param p0, "listingId"    # I
    .param p1, "destination"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "listingId"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    const-string v1, "destination"

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3, v4, v5}, Lnz/co/realestate/android/lib/eo/server/job/RESDrivingDistanceJob;->formatLocation(DD)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-object v0
.end method

.method public static buildBundle(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "listingId"    # I
    .param p1, "destination"    # Ljava/lang/String;

    .prologue
    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "listingId"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    const-string v1, "destination"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-object v0
.end method

.method public static buildBundle(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "listingId"    # I
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "listingId"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "destination"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-object v0
.end method

.method private static formatLocation(DD)Ljava/lang/String;
    .locals 6
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%.6f"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.6f"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWaypoints(Lorg/w3c/dom/Document;)Ljava/util/List;
    .locals 14
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    const-string v9, "LineString"

    invoke-interface {p1, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 115
    .local v4, "nl":Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    invoke-interface {v4, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 116
    .local v7, "rootNode":Lorg/w3c/dom/Node;
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 117
    .local v1, "configItems":Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    invoke-interface {v1, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 118
    .local v3, "lineStringNode":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 119
    .local v5, "path":Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    invoke-interface {v5, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "points":[Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v8, "waypoints":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v6

    if-ge v2, v9, :cond_0

    .line 122
    aget-object v9, v6, v2

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "components":[Ljava/lang/String;
    new-instance v9, Lcom/google/android/gms/maps/model/LatLng;

    const/4 v10, 0x1

    aget-object v10, v0, v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    const/4 v12, 0x0

    aget-object v12, v0, v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "components":[Ljava/lang/String;
    :cond_0
    return-object v8
.end method


# virtual methods
.method public execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Integer;
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uiThreadHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    const-string v15, "listingId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 73
    .local v8, "listingId":I
    const-string v15, "source"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 74
    .local v11, "source":Ljava/lang/String;
    const-string v15, "destination"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "destination":Ljava/lang/String;
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v15

    invoke-virtual {v15, v8}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedListingDistance(I)Ljava/lang/Integer;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v15

    invoke-virtual {v15, v8}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCachedListingDistance(I)Ljava/lang/Integer;

    move-result-object v15

    .line 110
    :goto_0
    return-object v15

    .line 80
    :cond_0
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v15

    invoke-virtual {v15}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getCurrentUserLocation()Landroid/location/Location;

    move-result-object v13

    .line 81
    .local v13, "userLocation":Landroid/location/Location;
    if-nez v11, :cond_1

    invoke-virtual {v13}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    invoke-virtual {v13}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Lnz/co/realestate/android/lib/eo/server/job/RESDrivingDistanceJob;->formatLocation(DD)Ljava/lang/String;

    move-result-object v11

    .line 84
    :cond_1
    const-string v15, "UTF-8"

    invoke-static {v11, v15}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 85
    const-string v15, "UTF-8"

    invoke-static {v3, v15}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 88
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "http://maps.google.com/maps?f=d&hl=en&saddr="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&daddr="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&ie=UTF8&0&om=0&output=kml"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 89
    .local v12, "url":Ljava/lang/String;
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v15}, Lnz/co/realestate/android/lib/eo/server/job/RESDrivingDistanceJob;->get(Ljava/lang/String;Z)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 92
    .local v9, "response":Lorg/apache/http/HttpResponse;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v15

    invoke-virtual {v15}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 93
    .local v2, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v7, Lorg/xml/sax/InputSource;

    invoke-direct {v7}, Lorg/xml/sax/InputSource;-><init>()V

    .line 94
    .local v7, "input":Lorg/xml/sax/InputSource;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lnz/co/realestate/android/lib/eo/server/job/RESDrivingDistanceJob;->unzip(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v10

    .line 95
    .local v10, "responseString":Ljava/lang/String;
    new-instance v15, Ljava/io/StringReader;

    invoke-direct {v15, v10}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 96
    invoke-virtual {v2, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lnz/co/realestate/android/lib/eo/server/job/RESDrivingDistanceJob;->getWaypoints(Lorg/w3c/dom/Document;)Ljava/util/List;

    move-result-object v14

    .line 99
    .local v14, "waypoints":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    if-eqz v14, :cond_2

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_3

    :cond_2
    new-instance v15, Ljava/lang/Exception;

    const-string v16, "invalid waypoints"

    invoke-direct/range {v15 .. v16}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v15

    .line 102
    :cond_3
    const-wide/16 v4, 0x0

    .line 103
    .local v4, "distance":D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ge v6, v15, :cond_4

    .line 104
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v16, v6, 0x1

    move/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lnz/co/jsalibrary/android/util/JSALocationUtil;->distance(Ljava/lang/Object;Ljava/lang/Object;)D

    move-result-wide v16

    add-double v4, v4, v16

    .line 103
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 107
    :cond_4
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v15

    double-to-int v0, v4

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v8, v0}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->addCachedListingDistance(II)V

    .line 110
    double-to-int v15, v4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto/16 :goto_0
.end method

.method public bridge synthetic execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lnz/co/realestate/android/lib/eo/server/job/RESDrivingDistanceJob;->execute(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Handler;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Integer;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "exception"    # Ljava/lang/Exception;
    .param p4, "uiThreadHandler"    # Landroid/os/Handler;

    .prologue
    .line 137
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;

    sget v1, Lnz/co/realestate/android/lib/R$string;->error_retrieving_directions:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lnz/co/jsalibrary/android/runnable/JSAShowToastRunnable;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lnz/co/jsalibrary/android/util/JSALogUtil;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2, p3, p4}, Lnz/co/realestate/android/lib/eo/server/job/RESDrivingDistanceJob;->handleException(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Exception;Landroid/os/Handler;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
