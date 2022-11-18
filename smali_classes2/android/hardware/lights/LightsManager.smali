.class public abstract Landroid/hardware/lights/LightsManager;
.super Ljava/lang/Object;
.source "LightsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/lights/LightsManager$LightsSession;,
        Landroid/hardware/lights/LightsManager$LightType;
    }
.end annotation


# static fields
.field public static final whitelist LIGHT_TYPE_MICROPHONE:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "LightsManager"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/hardware/lights/LightsManager;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method


# virtual methods
.method public abstract whitelist getLightState(Landroid/hardware/lights/Light;)Landroid/hardware/lights/LightState;
.end method

.method public abstract whitelist getLights()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/lights/Light;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist openSession()Landroid/hardware/lights/LightsManager$LightsSession;
.end method

.method public abstract blacklist openSession(I)Landroid/hardware/lights/LightsManager$LightsSession;
.end method
