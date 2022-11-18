.class public interface abstract annotation Lcom/oplus/annotation/OplusProperty;
.super Ljava/lang/Object;
.source "OplusProperty.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/annotation/OplusProperty$OplusPropertyType;
    }
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
.method public abstract whitelist value()Lcom/oplus/annotation/OplusProperty$OplusPropertyType;
.end method
