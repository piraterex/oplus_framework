.class final enum Lcom/android/framework/protobuf/FieldType$Collection;
.super Ljava/lang/Enum;
.source "FieldType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/FieldType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Collection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/framework/protobuf/FieldType$Collection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/framework/protobuf/FieldType$Collection;

.field public static final enum blacklist MAP:Lcom/android/framework/protobuf/FieldType$Collection;

.field public static final enum blacklist PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

.field public static final enum blacklist SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

.field public static final enum blacklist VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;


# instance fields
.field private final blacklist isList:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 330
    new-instance v0, Lcom/android/framework/protobuf/FieldType$Collection;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/framework/protobuf/FieldType$Collection;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    .line 331
    new-instance v1, Lcom/android/framework/protobuf/FieldType$Collection;

    const-string v3, "VECTOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/android/framework/protobuf/FieldType$Collection;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    .line 332
    new-instance v3, Lcom/android/framework/protobuf/FieldType$Collection;

    const-string v5, "PACKED_VECTOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/android/framework/protobuf/FieldType$Collection;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    .line 333
    new-instance v5, Lcom/android/framework/protobuf/FieldType$Collection;

    const-string v7, "MAP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lcom/android/framework/protobuf/FieldType$Collection;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->MAP:Lcom/android/framework/protobuf/FieldType$Collection;

    .line 329
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/framework/protobuf/FieldType$Collection;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/android/framework/protobuf/FieldType$Collection;->$VALUES:[Lcom/android/framework/protobuf/FieldType$Collection;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "isList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 337
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 338
    iput-boolean p3, p0, Lcom/android/framework/protobuf/FieldType$Collection;->isList:Z

    .line 339
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/framework/protobuf/FieldType$Collection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 329
    const-class v0, Lcom/android/framework/protobuf/FieldType$Collection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/FieldType$Collection;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/framework/protobuf/FieldType$Collection;
    .locals 1

    .line 329
    sget-object v0, Lcom/android/framework/protobuf/FieldType$Collection;->$VALUES:[Lcom/android/framework/protobuf/FieldType$Collection;

    invoke-virtual {v0}, [Lcom/android/framework/protobuf/FieldType$Collection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/framework/protobuf/FieldType$Collection;

    return-object v0
.end method


# virtual methods
.method public blacklist isList()Z
    .locals 1

    .line 343
    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldType$Collection;->isList:Z

    return v0
.end method
