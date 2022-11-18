.class public final enum Lcom/android/framework/protobuf/Writer$FieldOrder;
.super Ljava/lang/Enum;
.source "Writer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FieldOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/framework/protobuf/Writer$FieldOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/framework/protobuf/Writer$FieldOrder;

.field public static final enum blacklist ASCENDING:Lcom/android/framework/protobuf/Writer$FieldOrder;

.field public static final enum blacklist DESCENDING:Lcom/android/framework/protobuf/Writer$FieldOrder;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 44
    new-instance v0, Lcom/android/framework/protobuf/Writer$FieldOrder;

    const-string v1, "ASCENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/framework/protobuf/Writer$FieldOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/framework/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/android/framework/protobuf/Writer$FieldOrder;

    .line 47
    new-instance v1, Lcom/android/framework/protobuf/Writer$FieldOrder;

    const-string v3, "DESCENDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/framework/protobuf/Writer$FieldOrder;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/framework/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/android/framework/protobuf/Writer$FieldOrder;

    .line 42
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/framework/protobuf/Writer$FieldOrder;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/android/framework/protobuf/Writer$FieldOrder;->$VALUES:[Lcom/android/framework/protobuf/Writer$FieldOrder;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/framework/protobuf/Writer$FieldOrder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 42
    const-class v0, Lcom/android/framework/protobuf/Writer$FieldOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/Writer$FieldOrder;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/framework/protobuf/Writer$FieldOrder;
    .locals 1

    .line 42
    sget-object v0, Lcom/android/framework/protobuf/Writer$FieldOrder;->$VALUES:[Lcom/android/framework/protobuf/Writer$FieldOrder;

    invoke-virtual {v0}, [Lcom/android/framework/protobuf/Writer$FieldOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/framework/protobuf/Writer$FieldOrder;

    return-object v0
.end method
