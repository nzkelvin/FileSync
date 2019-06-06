.class public abstract Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;
.super Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;
.source "RESServerRequestJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    invoke-direct {p0}, Lnz/co/jsalibrary/android/background/JSABackgroundJob$SimpleBackgroundJob;-><init>()V

    return-void
.end method

.method protected static appendApiUrlParameters(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
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
    .line 198
    .local p0, "parameters":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    .line 199
    :goto_0
    new-instance v0, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v1, "api_sig"

    invoke-direct {v0, v1, p1}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v0, Lnz/co/jsalibrary/android/tuple/JSATuple;

    const-string v1, "api_key"

    const-string v2, "ef26fdf7-cd53-4144-a155-3f1ed1533c2c"

    invoke-direct {v0, v1, v2}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    return-object p0

    .line 198
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .end local p0    # "parameters":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method protected static appendUrlParameters(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 209
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez p1, :cond_0

    .line 220
    .end local p0    # "url":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 210
    .restart local p0    # "url":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string v5, "?"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 214
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-virtual {v5}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 215
    .local v4, "key":Ljava/lang/String;
    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "a":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-virtual {v5}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "b":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_1

    const-string v5, "&"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 220
    .end local v0    # "a":Ljava/lang/String;
    .end local v1    # "b":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method protected static calculateApiSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "requestPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-static {p0, v0, v0, v0, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->calculateApiSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static calculateApiSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "requestPath"    # Ljava/lang/String;
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-static {p0, p1, p2, v0, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->calculateApiSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static calculateApiSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p0, "requestPath"    # Ljava/lang/String;
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 149
    .local p3, "parameters":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->calculateApiSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static calculateApiSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "requestPath"    # Ljava/lang/String;
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 153
    .local p3, "parameters":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "31f119a3-7cf4-4b49-bb36-436056038517"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_1
    if-eqz p3, :cond_2

    invoke-static {p3}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->sortAndConcatenateParameters(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/codec/digest/DigestUtils;->md5(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method protected static calculateApiSignature(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p0, "requestPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 133
    invoke-static {p0, v0, v0, p1, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->calculateApiSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static calculateApiSignature(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "requestPath"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 137
    invoke-static {p0, v0, v0, p1, p2}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->calculateApiSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static constructUrlHttp(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "requestPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->calculateApiSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "signature":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v1}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->appendApiUrlParameters(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 52
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://api.realestate.co.nz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->appendUrlParameters(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected static constructUrlHttp(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .param p0, "requestPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {p0, p1}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->calculateApiSignature(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "signature":Ljava/lang/String;
    invoke-static {p1, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->appendApiUrlParameters(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://api.realestate.co.nz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->appendUrlParameters(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static constructUrlHttp(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .param p0, "requestPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->formatParameters(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 57
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {p0, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->calculateApiSignature(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "signature":Ljava/lang/String;
    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->appendApiUrlParameters(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://api.realestate.co.nz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->appendUrlParameters(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected static constructUrlHttp(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "requestPath"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->formatParameters(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 70
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {p0, v0, p2}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->calculateApiSignature(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "signature":Ljava/lang/String;
    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->appendApiUrlParameters(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://api.realestate.co.nz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->appendUrlParameters(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected static constructUrlHttpAuthenticated(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "requestPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->constructUrlHttpAuthenticated(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static constructUrlHttpAuthenticated(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "requestPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->constructUrlHttpAuthenticated(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static constructUrlHttpAuthenticated(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "requestPath"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getLoggedInUser()Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v0

    .line 89
    .local v0, "loggedInUser":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 90
    :cond_0
    invoke-virtual {v0}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, p1, p2, v1, v2}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->constructUrlHttpAuthenticated(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static constructUrlHttpAuthenticated(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "requestPath"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->formatParameters(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 95
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {p0, p3, p4, v0, p2}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->calculateApiSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "signature":Ljava/lang/String;
    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->appendApiUrlParameters(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://api.realestate.co.nz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->appendUrlParameters(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected static constructUrlHttps(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "requestPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->calculateApiSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "signature":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v1}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->appendApiUrlParameters(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 107
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://api.realestate.co.nz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->appendUrlParameters(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected static constructUrlHttps(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .param p0, "requestPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->formatParameters(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 112
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {p0, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->calculateApiSignature(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "signature":Ljava/lang/String;
    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->appendApiUrlParameters(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://api.realestate.co.nz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->appendUrlParameters(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected static constructUrlHttps(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "requestPath"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->formatParameters(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 119
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {p0, v0, p2}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->calculateApiSignature(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "signature":Ljava/lang/String;
    invoke-static {v0, v1}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->appendApiUrlParameters(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://api.realestate.co.nz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->appendUrlParameters(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected static encodePairs(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 184
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/NameValuePair;

    .line 185
    .local v4, "pair":Lorg/apache/http/NameValuePair;
    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "a":Ljava/lang/String;
    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "b":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_0

    const-string v5, "&"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 190
    .end local v0    # "a":Ljava/lang/String;
    .end local v1    # "b":Ljava/lang/String;
    .end local v4    # "pair":Lorg/apache/http/NameValuePair;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method protected static formatParameters(Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
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
    .line 514
    .local p0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 517
    :cond_0
    return-object v1

    .line 515
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 516
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "key":Ljava/lang/String;
    new-instance v3, Lnz/co/jsalibrary/android/tuple/JSATuple;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lnz/co/jsalibrary/android/tuple/JSATuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static mapListResult(Lorg/codehaus/jackson/type/TypeReference;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/type/TypeReference",
            "<",
            "Ljava/util/List",
            "<TT;>;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 498
    .local p0, "reference":Lorg/codehaus/jackson/type/TypeReference;, "Lorg/codehaus/jackson/type/TypeReference<Ljava/util/List<TT;>;>;"
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    .line 499
    .local v0, "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_UNKNOWN_PROPERTIES:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/map/ObjectMapper;->configure(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;

    .line 500
    invoke-virtual {v0, p1, p0}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public static mapResult(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 504
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v0

    .line 505
    .local v0, "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_UNKNOWN_PROPERTIES:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/map/ObjectMapper;->configure(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;

    .line 506
    invoke-virtual {v0, p1, p0}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected static sortAndConcatenateParameters(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnz/co/jsalibrary/android/tuple/JSATuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "parameters":Ljava/util/List;, "Ljava/util/List<Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v3, "strings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnz/co/jsalibrary/android/tuple/JSATuple;

    .line 170
    .local v1, "parameter":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    .end local v1    # "parameter":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 172
    const-string v4, ""

    invoke-static {v3, v4}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "string":Ljava/lang/String;
    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "encodedString":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method protected constructClient()Lorg/apache/http/client/HttpClient;
    .locals 4

    .prologue
    .line 525
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 526
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.protocol.version"

    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 527
    return-object v0
.end method

.method protected delete(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->delete(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected delete(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->constructClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 429
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 430
    .local v1, "delete":Lorg/apache/http/client/methods/HttpDelete;
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/Header;

    .local v2, "header":Lorg/apache/http/Header;
    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpDelete;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 431
    .end local v2    # "header":Lorg/apache/http/Header;
    :cond_0
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    return-object v3
.end method

.method protected deleteAuthenticated(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->deleteAuthenticated(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected deleteAuthenticated(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 444
    .local v0, "internal":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    :goto_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->getAuthorisationHeader()Lorg/apache/http/Header;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    invoke-virtual {p0, p1, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->delete(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1

    .line 443
    .end local v0    # "internal":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method protected deleteAuthenticated(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/Header;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 450
    .local v0, "internal":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    :goto_0
    invoke-virtual {p0, p3, p4}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->getAuthorisationHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    invoke-virtual {p0, p1, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->delete(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1

    .line 449
    .end local v0    # "internal":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method protected get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->get(Ljava/lang/String;Z)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected get(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->get(Ljava/lang/String;ZLjava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected get(Ljava/lang/String;Z)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "zip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->get(Ljava/lang/String;ZLjava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected get(Ljava/lang/String;ZLjava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "zip"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    .local p3, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->constructClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 249
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 250
    .local v1, "get":Lorg/apache/http/client/methods/HttpGet;
    if-eqz p2, :cond_0

    new-instance v3, Lorg/apache/http/message/BasicHeader;

    const-string v4, "Accept-Encoding"

    const-string v5, "gzip"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Lorg/apache/http/Header;)V

    .line 251
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/Header;

    .local v2, "header":Lorg/apache/http/Header;
    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 252
    .end local v2    # "header":Lorg/apache/http/Header;
    :cond_1
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    return-object v3
.end method

.method protected varargs get(Ljava/lang/String;Z[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "zip"    # Z
    .param p3, "headers"    # [Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    if-eqz p3, :cond_0

    invoke-static {p3}, Lnz/co/jsalibrary/android/util/JSAArrayUtil;->toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->get(Ljava/lang/String;ZLjava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected varargs get(Ljava/lang/String;[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->get(Ljava/lang/String;Z[Lorg/apache/http/Header;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected getAuthenticated(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->getAuthenticated(Ljava/lang/String;Z)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected getAuthenticated(Ljava/lang/String;Z)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "zip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->getAuthenticated(Ljava/lang/String;ZLjava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected getAuthenticated(Ljava/lang/String;ZLjava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "zip"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    .local p3, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    if-eqz p3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 269
    .local v0, "internal":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    :goto_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->getAuthorisationHeader()Lorg/apache/http/Header;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-virtual {p0, p1, p2, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->get(Ljava/lang/String;ZLjava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1

    .line 268
    .end local v0    # "internal":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method protected getAuthenticated(Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "zip"    # Z
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/Header;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    .local p3, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    if-eqz p3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 275
    .local v0, "internal":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    :goto_0
    invoke-virtual {p0, p4, p5}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->getAuthorisationHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-virtual {p0, p1, p2, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->get(Ljava/lang/String;ZLjava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1

    .line 274
    .end local v0    # "internal":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method protected getAuthorisationHeader()Lorg/apache/http/Header;
    .locals 3

    .prologue
    .line 459
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getApplicationModelBase()Lnz/co/realestate/android/lib/model/RESApplicationModelBase;

    move-result-object v1

    invoke-virtual {v1}, Lnz/co/realestate/android/lib/model/RESApplicationModelBase;->getLoggedInUser()Lnz/co/jsalibrary/android/tuple/JSATuple;

    move-result-object v0

    .line 460
    .local v0, "loggedInUser":Lnz/co/jsalibrary/android/tuple/JSATuple;, "Lnz/co/jsalibrary/android/tuple/JSATuple<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 461
    :cond_0
    invoke-virtual {v0}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getA()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lnz/co/jsalibrary/android/tuple/JSATuple;->getB()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->getAuthorisationHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    return-object v1
.end method

.method protected getAuthorisationHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 465
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "digest":Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 467
    .local v0, "auth":Ljava/lang/String;
    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string v3, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Basic "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method protected getResponseString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 2
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 475
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected postJsonEncoded(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->postJsonEncoded(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected postJsonEncoded(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    .local p3, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    if-eqz p2, :cond_0

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "jsonString":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->postStringEncoded(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1

    .line 300
    .end local v0    # "jsonString":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected postJsonEncodedAuthenticated(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->postJsonEncodedAuthenticated(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected postJsonEncodedAuthenticated(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    .local p3, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    if-eqz p3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 331
    .local v0, "internal":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    :goto_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->getAuthorisationHeader()Lorg/apache/http/Header;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-virtual {p0, p1, p2, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->postJsonEncoded(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1

    .line 330
    .end local v0    # "internal":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method protected postStringEncoded(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->postStringEncoded(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected postStringEncoded(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    .local p3, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->constructClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 314
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 315
    .local v2, "post":Lorg/apache/http/client/methods/HttpPost;
    new-instance v3, Lorg/apache/http/message/BasicHeader;

    const-string v4, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Lorg/apache/http/Header;)V

    .line 316
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/Header;

    .local v1, "header":Lorg/apache/http/Header;
    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 317
    .end local v1    # "header":Lorg/apache/http/Header;
    :cond_0
    if-eqz p2, :cond_1

    new-instance v3, Lorg/apache/http/entity/StringEntity;

    const-string v4, "UTF-8"

    invoke-direct {v3, p2, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 318
    :cond_1
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    return-object v3
.end method

.method protected postStringEncodedAuthenticated(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->postStringEncodedAuthenticated(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected postStringEncodedAuthenticated(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    .local p3, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    if-eqz p3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 345
    .local v0, "internal":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    :goto_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->getAuthorisationHeader()Lorg/apache/http/Header;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-virtual {p0, p1, p2, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->postStringEncoded(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1

    .line 344
    .end local v0    # "internal":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method protected postStringEncodedAuthenticated(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/Header;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    .local p3, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    if-eqz p3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 351
    .local v0, "internal":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    :goto_0
    invoke-virtual {p0, p4, p5}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->getAuthorisationHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-virtual {p0, p1, p2, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->postStringEncoded(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1

    .line 350
    .end local v0    # "internal":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method protected postUrlEncoded(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    .local p2, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->postUrlEncoded(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected postUrlEncoded(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    .local p2, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p3, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    invoke-static {p2}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->encodePairs(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->postStringEncoded(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected putJsonEncoded(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->putJsonEncoded(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected putJsonEncoded(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    .local p3, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    if-eqz p2, :cond_0

    invoke-static {}, Lnz/co/realestate/android/lib/core/RESApplicationBase;->getObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "jsonString":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->putStringEncoded(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1

    .line 364
    .end local v0    # "jsonString":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected putJsonEncodedAuthenticated(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->putJsonEncodedAuthenticated(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected putJsonEncodedAuthenticated(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    .local p3, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    if-eqz p3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 395
    .local v0, "internal":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    :goto_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->getAuthorisationHeader()Lorg/apache/http/Header;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    invoke-virtual {p0, p1, p2, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->putJsonEncoded(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1

    .line 394
    .end local v0    # "internal":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method protected putStringEncoded(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->putStringEncoded(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected putStringEncoded(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    .local p3, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->constructClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 378
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 379
    .local v2, "put":Lorg/apache/http/client/methods/HttpPut;
    new-instance v3, Lorg/apache/http/message/BasicHeader;

    const-string v4, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Lorg/apache/http/Header;)V

    .line 380
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/Header;

    .local v1, "header":Lorg/apache/http/Header;
    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 381
    .end local v1    # "header":Lorg/apache/http/Header;
    :cond_0
    if-eqz p2, :cond_1

    new-instance v3, Lorg/apache/http/entity/StringEntity;

    const-string v4, "UTF-8"

    invoke-direct {v3, p2, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 382
    :cond_1
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    return-object v3
.end method

.method protected putStringEncodedAuthenticated(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->putStringEncodedAuthenticated(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected putStringEncodedAuthenticated(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    .local p3, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    if-eqz p3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 409
    .local v0, "internal":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    :goto_0
    invoke-virtual {p0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->getAuthorisationHeader()Lorg/apache/http/Header;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    invoke-virtual {p0, p1, p2, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->putStringEncoded(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1

    .line 408
    .end local v0    # "internal":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method protected putStringEncodedAuthenticated(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/Header;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    .local p3, "headers":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/http/Header;>;"
    if-eqz p3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 415
    .local v0, "internal":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    :goto_0
    invoke-virtual {p0, p4, p5}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->getAuthorisationHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    invoke-virtual {p0, p1, p2, v0}, Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;->putStringEncoded(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1

    .line 414
    .end local v0    # "internal":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method protected unzip(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 7
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 483
    .local p0, "this":Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob;, "Lnz/co/realestate/android/lib/eo/server/core/RESServerRequestJob<TT;>;"
    const-string v5, "Content-Encoding"

    invoke-interface {p1, v5}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 484
    .local v1, "headers":[Lorg/apache/http/Header;
    array-length v5, v1

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "gzip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 490
    :goto_0
    return-object v5

    .line 485
    :cond_1
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 486
    .local v2, "in":Ljava/util/zip/GZIPInputStream;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "UTF-8"

    invoke-direct {v5, v2, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 487
    .local v4, "reader":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 489
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 490
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method
