.class public final enum Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;
.super Ljava/lang/Enum;
.source "IOplusFeatureConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/content/IOplusFeatureConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FeatureID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

.field public static final enum whitelist DYNAMIC_SIMSLOT_1:Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

.field public static final enum whitelist DYNAMIC_SIMSLOT_2:Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

.field public static final enum whitelist INVALID:Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

.field public static final enum whitelist STATIC_COMPONENT:Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 28
    new-instance v0, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    const-string v1, "STATIC_COMPONENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->STATIC_COMPONENT:Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    .line 29
    new-instance v1, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    const-string v3, "DYNAMIC_SIMSLOT_1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->DYNAMIC_SIMSLOT_1:Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    .line 30
    new-instance v3, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    const-string v5, "DYNAMIC_SIMSLOT_2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->DYNAMIC_SIMSLOT_2:Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    .line 31
    new-instance v5, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    const-string v7, "INVALID"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->INVALID:Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    .line 27
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->$VALUES:[Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    return-object v0
.end method

.method public static whitelist values()[Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;
    .locals 1

    .line 27
    sget-object v0, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->$VALUES:[Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    invoke-virtual {v0}, [Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    return-object v0
.end method
