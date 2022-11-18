.class public final Landroid/providers/settings/GlobalSettingsProto$UserAbsentSmallBattery;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UserAbsentSmallBattery"
.end annotation


# static fields
.field public static final blacklist RADIOS_OFF_ENABLED:J = 0x10b00000001L

.field public static final blacklist TOUCH_OFF_ENABLED:J = 0x10b00000002L


# instance fields
.field final synthetic blacklist this$0:Landroid/providers/settings/GlobalSettingsProto;


# direct methods
.method public constructor blacklist <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/providers/settings/GlobalSettingsProto;

    .line 954
    iput-object p1, p0, Landroid/providers/settings/GlobalSettingsProto$UserAbsentSmallBattery;->this$0:Landroid/providers/settings/GlobalSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
