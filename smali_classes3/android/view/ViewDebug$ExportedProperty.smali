.class public interface abstract annotation Landroid/view/ViewDebug$ExportedProperty;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/view/ViewDebug$ExportedProperty;
        category = ""
        deepExport = false
        flagMapping = {}
        formatToHexString = false
        hasAdjacentMapping = false
        indexMapping = {}
        mapping = {}
        prefix = ""
        resolveId = false
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ExportedProperty"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract whitelist category()Ljava/lang/String;
.end method

.method public abstract whitelist deepExport()Z
.end method

.method public abstract whitelist flagMapping()[Landroid/view/ViewDebug$FlagToString;
.end method

.method public abstract whitelist formatToHexString()Z
.end method

.method public abstract whitelist hasAdjacentMapping()Z
.end method

.method public abstract whitelist indexMapping()[Landroid/view/ViewDebug$IntToString;
.end method

.method public abstract whitelist mapping()[Landroid/view/ViewDebug$IntToString;
.end method

.method public abstract whitelist prefix()Ljava/lang/String;
.end method

.method public abstract whitelist resolveId()Z
.end method
