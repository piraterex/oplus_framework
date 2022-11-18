.class final enum Landroid/mtp/MtpStorageManager$MtpObjectState;
.super Ljava/lang/Enum;
.source "MtpStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MtpObjectState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/mtp/MtpStorageManager$MtpObjectState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/mtp/MtpStorageManager$MtpObjectState;

.field public static final enum greylist-max-o FROZEN:Landroid/mtp/MtpStorageManager$MtpObjectState;

.field public static final enum greylist-max-o FROZEN_ADDED:Landroid/mtp/MtpStorageManager$MtpObjectState;

.field public static final enum greylist-max-o FROZEN_ONESHOT_ADD:Landroid/mtp/MtpStorageManager$MtpObjectState;

.field public static final enum greylist-max-o FROZEN_ONESHOT_DEL:Landroid/mtp/MtpStorageManager$MtpObjectState;

.field public static final enum greylist-max-o FROZEN_REMOVED:Landroid/mtp/MtpStorageManager$MtpObjectState;

.field public static final enum greylist-max-o NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 13

    .line 128
    new-instance v0, Landroid/mtp/MtpStorageManager$MtpObjectState;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpStorageManager$MtpObjectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 129
    new-instance v1, Landroid/mtp/MtpStorageManager$MtpObjectState;

    const-string v3, "FROZEN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/mtp/MtpStorageManager$MtpObjectState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN:Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 130
    new-instance v3, Landroid/mtp/MtpStorageManager$MtpObjectState;

    const-string v5, "FROZEN_ADDED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/mtp/MtpStorageManager$MtpObjectState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_ADDED:Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 131
    new-instance v5, Landroid/mtp/MtpStorageManager$MtpObjectState;

    const-string v7, "FROZEN_REMOVED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/mtp/MtpStorageManager$MtpObjectState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_REMOVED:Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 132
    new-instance v7, Landroid/mtp/MtpStorageManager$MtpObjectState;

    const-string v9, "FROZEN_ONESHOT_ADD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/mtp/MtpStorageManager$MtpObjectState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_ONESHOT_ADD:Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 133
    new-instance v9, Landroid/mtp/MtpStorageManager$MtpObjectState;

    const-string v11, "FROZEN_ONESHOT_DEL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroid/mtp/MtpStorageManager$MtpObjectState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_ONESHOT_DEL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 127
    const/4 v11, 0x6

    new-array v11, v11, [Landroid/mtp/MtpStorageManager$MtpObjectState;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Landroid/mtp/MtpStorageManager$MtpObjectState;->$VALUES:[Landroid/mtp/MtpStorageManager$MtpObjectState;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObjectState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 127
    const-class v0, Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorageManager$MtpObjectState;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/mtp/MtpStorageManager$MtpObjectState;
    .locals 1

    .line 127
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->$VALUES:[Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-virtual {v0}, [Landroid/mtp/MtpStorageManager$MtpObjectState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/mtp/MtpStorageManager$MtpObjectState;

    return-object v0
.end method
