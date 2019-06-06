.class public Lnz/co/realestate/android/lib/util/RESPreferenceUtil;
.super Ljava/lang/Object;
.source "RESPreferenceUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writePreferences(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetFileName"    # Ljava/lang/String;
    .param p2, "overwrite"    # Z

    .prologue
    .line 26
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v10

    .line 27
    .local v10, "stream":Ljava/io/InputStream;
    invoke-static {v10}, Lnz/co/jsalibrary/android/util/JSAFileUtil;->readFileStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object v9

    .line 28
    .local v9, "readFileStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v8

    .line 30
    .local v8, "preferences":Ljava/lang/String;
    const-string v13, "^(.*) \\[(.*)\\] : (.*)$"

    const/4 v14, 0x2

    invoke-static {v13, v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 31
    .local v5, "pattern":Ljava/util/regex/Pattern;
    const-string v13, "\n"

    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 32
    .local v7, "preferenceLines":[Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 33
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    array-length v14, v7

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v14, :cond_6

    aget-object v6, v7, v13

    .line 34
    .local v6, "preferenceLine":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 35
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-nez v15, :cond_1

    .line 33
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 36
    :cond_1
    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "key":Ljava/lang/String;
    const/4 v15, 0x2

    invoke-virtual {v4, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 38
    .local v11, "type":Ljava/lang/String;
    const/4 v15, 0x3

    invoke-virtual {v4, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 39
    .local v12, "value":Ljava/lang/String;
    const-string v15, "boolean"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v15

    invoke-interface {v3, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 48
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    .end local v5    # "pattern":Ljava/util/regex/Pattern;
    .end local v6    # "preferenceLine":Ljava/lang/String;
    .end local v7    # "preferenceLines":[Ljava/lang/String;
    .end local v8    # "preferences":Ljava/lang/String;
    .end local v9    # "readFileStream":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "stream":Ljava/io/InputStream;
    .end local v11    # "type":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 49
    .local v1, "exception":Ljava/io/IOException;
    const/4 v13, 0x0

    .end local v1    # "exception":Ljava/io/IOException;
    :goto_2
    return v13

    .line 40
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4    # "matcher":Ljava/util/regex/Matcher;
    .restart local v5    # "pattern":Ljava/util/regex/Pattern;
    .restart local v6    # "preferenceLine":Ljava/lang/String;
    .restart local v7    # "preferenceLines":[Ljava/lang/String;
    .restart local v8    # "preferences":Ljava/lang/String;
    .restart local v9    # "readFileStream":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "stream":Ljava/io/InputStream;
    .restart local v11    # "type":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    :cond_2
    const-string v15, "float"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-static {v12}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v15

    invoke-interface {v3, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 41
    :cond_3
    const-string v15, "int"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v3, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 42
    :cond_4
    const-string v15, "long"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v3, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 43
    :cond_5
    const-string v15, "string"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v3, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 45
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    .end local v6    # "preferenceLine":Ljava/lang/String;
    .end local v11    # "type":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    :cond_6
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    move/from16 v0, p2

    invoke-static {v13, v3, v0}, Lnz/co/jsalibrary/android/util/JSAPreferenceUtil;->writePreferences(Landroid/content/SharedPreferences;Ljava/util/Map;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    const/4 v13, 0x1

    goto :goto_2
.end method
