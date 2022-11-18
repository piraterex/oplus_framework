.class public final enum Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;
.super Ljava/lang/Enum;
.source "BaseProtoLogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/protolog/BaseProtoLogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

.field public static final enum blacklist DEBUG:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

.field public static final enum blacklist ERROR:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

.field public static final enum blacklist INFO:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

.field public static final enum blacklist VERBOSE:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

.field public static final enum blacklist WARN:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

.field public static final enum blacklist WTF:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 13

    .line 91
    new-instance v0, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->DEBUG:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    new-instance v1, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    const-string v3, "VERBOSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->VERBOSE:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    new-instance v3, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    const-string v5, "INFO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->INFO:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    new-instance v5, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    const-string v7, "WARN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->WARN:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    new-instance v7, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    const-string v9, "ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->ERROR:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    new-instance v9, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    const-string v11, "WTF"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->WTF:Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    .line 89
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->$VALUES:[Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 89
    const-class v0, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;
    .locals 1

    .line 89
    sget-object v0, Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->$VALUES:[Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    invoke-virtual {v0}, [Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/protolog/BaseProtoLogImpl$LogLevel;

    return-object v0
.end method
