.class public final Landroid/providers/settings/SystemSettingsProto$Volume;
.super Ljava/lang/Object;
.source "SystemSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SystemSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Volume"
.end annotation


# static fields
.field public static final blacklist ACCESSIBILITY:J = 0x10b00000008L

.field public static final blacklist ALARM:J = 0x10b00000005L

.field public static final blacklist BLUETOOTH_SCO:J = 0x10b00000007L

.field public static final blacklist MASTER:J = 0x10b00000009L

.field public static final blacklist MASTER_BALANCE:J = 0x10b0000000dL

.field public static final blacklist MASTER_MONO:J = 0x10b0000000aL

.field public static final blacklist MODE_RINGER_STREAMS_AFFECTED:J = 0x10b0000000bL

.field public static final blacklist MUSIC:J = 0x10b00000004L

.field public static final blacklist MUTE_STREAMS_AFFECTED:J = 0x10b0000000cL

.field public static final blacklist NOTIFICATION:J = 0x10b00000006L

.field public static final blacklist RING:J = 0x10b00000001L

.field public static final blacklist SYSTEM:J = 0x10b00000002L

.field public static final blacklist VOICE:J = 0x10b00000003L


# instance fields
.field final synthetic blacklist this$0:Landroid/providers/settings/SystemSettingsProto;


# direct methods
.method public constructor blacklist <init>(Landroid/providers/settings/SystemSettingsProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/providers/settings/SystemSettingsProto;

    .line 208
    iput-object p1, p0, Landroid/providers/settings/SystemSettingsProto$Volume;->this$0:Landroid/providers/settings/SystemSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
