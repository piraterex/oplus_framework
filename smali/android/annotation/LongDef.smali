.class public interface abstract annotation Landroid/annotation/LongDef;
.super Ljava/lang/Object;
.source "LongDef.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/annotation/LongDef;
        flag = false
        prefix = {
            ""
        }
        value = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract blacklist flag()Z
.end method

.method public abstract blacklist prefix()[Ljava/lang/String;
.end method

.method public abstract blacklist value()[J
.end method
