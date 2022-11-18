.class final enum Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;
.super Ljava/lang/Enum;
.source "ZygoteServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ZygoteServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UsapPoolRefillAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

.field public static final enum blacklist DELAYED:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

.field public static final enum blacklist IMMEDIATE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

.field public static final enum blacklist NONE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 161
    new-instance v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    const-string v1, "DELAYED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->DELAYED:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    .line 162
    new-instance v1, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    const-string v3, "IMMEDIATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->IMMEDIATE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    .line 163
    new-instance v3, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    const-string v5, "NONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->NONE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    .line 160
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->$VALUES:[Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 160
    const-class v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;
    .locals 1

    .line 160
    sget-object v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->$VALUES:[Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    invoke-virtual {v0}, [Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    return-object v0
.end method
