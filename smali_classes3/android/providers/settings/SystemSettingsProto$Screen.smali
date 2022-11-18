.class public final Landroid/providers/settings/SystemSettingsProto$Screen;
.super Ljava/lang/Object;
.source "SystemSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SystemSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Screen"
.end annotation


# static fields
.field public static final blacklist AUTO_BRIGHTNESS_ADJ:J = 0x10b00000005L

.field public static final blacklist BRIGHTNESS:J = 0x10b00000002L

.field public static final blacklist BRIGHTNESS_FLOAT:J = 0x10b00000006L

.field public static final blacklist BRIGHTNESS_FOR_VR:J = 0x10b00000003L

.field public static final blacklist BRIGHTNESS_FOR_VR_FLOAT:J = 0x10b00000007L

.field public static final blacklist BRIGHTNESS_MODE:J = 0x10b00000004L

.field public static final blacklist OFF_TIMEOUT:J = 0x10b00000001L


# instance fields
.field final synthetic blacklist this$0:Landroid/providers/settings/SystemSettingsProto;


# direct methods
.method public constructor blacklist <init>(Landroid/providers/settings/SystemSettingsProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/providers/settings/SystemSettingsProto;

    .line 122
    iput-object p1, p0, Landroid/providers/settings/SystemSettingsProto$Screen;->this$0:Landroid/providers/settings/SystemSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
