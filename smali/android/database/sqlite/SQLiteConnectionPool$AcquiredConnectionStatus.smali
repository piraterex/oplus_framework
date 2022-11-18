.class final enum Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
.super Ljava/lang/Enum;
.source "SQLiteConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AcquiredConnectionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

.field public static final enum greylist-max-o DISCARD:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

.field public static final enum greylist-max-o NORMAL:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

.field public static final enum greylist-max-o RECONFIGURE:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 118
    new-instance v0, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->NORMAL:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 121
    new-instance v1, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    const-string v3, "RECONFIGURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->RECONFIGURE:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 124
    new-instance v3, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    const-string v5, "DISCARD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 116
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->$VALUES:[Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 116
    const-class v0, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    .locals 1

    .line 116
    sget-object v0, Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->$VALUES:[Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-virtual {v0}, [Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    return-object v0
.end method
