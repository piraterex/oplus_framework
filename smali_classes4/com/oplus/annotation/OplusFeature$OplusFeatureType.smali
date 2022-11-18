.class public final enum Lcom/oplus/annotation/OplusFeature$OplusFeatureType;
.super Ljava/lang/Enum;
.source "OplusFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/annotation/OplusFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OplusFeatureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/annotation/OplusFeature$OplusFeatureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

.field public static final enum blacklist MEMORY_FEATURE:Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

.field public static final enum blacklist MEMORY_NATIVE_FEATURE:Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

.field public static final enum blacklist PERSIST_FEATURE:Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

.field public static final enum blacklist PERSIST_NATIVE_FEATURE:Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

.field public static final enum blacklist READONLY_FEATURE:Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

.field public static final enum blacklist READONLY_NATIVE_FEATURE:Lcom/oplus/annotation/OplusFeature$OplusFeatureType;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 13

    .line 29
    new-instance v0, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    const-string v1, "READONLY_FEATURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->READONLY_FEATURE:Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    new-instance v1, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    const-string v3, "MEMORY_FEATURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->MEMORY_FEATURE:Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    new-instance v3, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    const-string v5, "PERSIST_FEATURE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->PERSIST_FEATURE:Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    new-instance v5, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    const-string v7, "READONLY_NATIVE_FEATURE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->READONLY_NATIVE_FEATURE:Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    new-instance v7, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    const-string v9, "MEMORY_NATIVE_FEATURE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->MEMORY_NATIVE_FEATURE:Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    new-instance v9, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    const-string v11, "PERSIST_NATIVE_FEATURE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->PERSIST_NATIVE_FEATURE:Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    .line 28
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->$VALUES:[Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/oplus/annotation/OplusFeature$OplusFeatureType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 28
    const-class v0, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/oplus/annotation/OplusFeature$OplusFeatureType;
    .locals 1

    .line 28
    sget-object v0, Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->$VALUES:[Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    invoke-virtual {v0}, [Lcom/oplus/annotation/OplusFeature$OplusFeatureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/annotation/OplusFeature$OplusFeatureType;

    return-object v0
.end method
