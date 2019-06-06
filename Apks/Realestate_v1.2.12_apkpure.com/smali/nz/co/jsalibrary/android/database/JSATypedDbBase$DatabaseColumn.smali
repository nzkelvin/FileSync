.class public interface abstract annotation Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;
.super Ljava/lang/Object;
.source "JSATypedDbBase.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lnz/co/jsalibrary/android/database/JSATypedDbBase$DatabaseColumn;
        decodingMethodName = ""
        defaultValue = ""
        defaultValueMethodName = ""
        encodingMethodArgumentType = Ljava/lang/Object;
        encodingMethodName = ""
        foreignKeyTableColumnName = ""
        foreignKeyTableName = ""
        fromVersion = 0x1
        isNonNull = false
        isPrimaryKey = false
        isPrimaryKeyAutoIncremented = false
        isUnique = false
        name = ""
        toVersion = 0x7fffffff
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz/co/jsalibrary/android/database/JSATypedDbBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "DatabaseColumn"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract decodingMethodName()Ljava/lang/String;
.end method

.method public abstract defaultValue()Ljava/lang/String;
.end method

.method public abstract defaultValueMethodName()Ljava/lang/String;
.end method

.method public abstract encodingMethodArgumentType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract encodingMethodName()Ljava/lang/String;
.end method

.method public abstract foreignKeyTableColumnName()Ljava/lang/String;
.end method

.method public abstract foreignKeyTableName()Ljava/lang/String;
.end method

.method public abstract fromVersion()I
.end method

.method public abstract isNonNull()Z
.end method

.method public abstract isPrimaryKey()Z
.end method

.method public abstract isPrimaryKeyAutoIncremented()Z
.end method

.method public abstract isUnique()Z
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract toVersion()I
.end method
