.class public final Landroid/providers/settings/SecureSettingsProto$Assist;
.super Ljava/lang/Object;
.source "SecureSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SecureSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Assist"
.end annotation


# static fields
.field public static final blacklist ASSISTANT:J = 0x10b00000001L

.field public static final blacklist DISCLOSURE_ENABLED:J = 0x10b00000004L

.field public static final blacklist GESTURE_ENABLED:J = 0x10b00000005L

.field public static final blacklist GESTURE_SENSITIVITY:J = 0x10b00000006L

.field public static final blacklist GESTURE_SETUP_COMPLETE:J = 0x10b00000009L

.field public static final blacklist GESTURE_SILENCE_ALERTS_ENABLED:J = 0x10b00000007L

.field public static final blacklist GESTURE_WAKE_ENABLED:J = 0x10b00000008L

.field public static final blacklist LONG_PRESS_HOME_ENABLED:J = 0x10b0000000bL

.field public static final blacklist SCREENSHOT_ENABLED:J = 0x10b00000003L

.field public static final blacklist STRUCTURE_ENABLED:J = 0x10b00000002L

.field public static final blacklist TOUCH_GESTURE_ENABLED:J = 0x10b0000000aL


# instance fields
.field final synthetic blacklist this$0:Landroid/providers/settings/SecureSettingsProto;


# direct methods
.method public constructor blacklist <init>(Landroid/providers/settings/SecureSettingsProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/providers/settings/SecureSettingsProto;

    .line 164
    iput-object p1, p0, Landroid/providers/settings/SecureSettingsProto$Assist;->this$0:Landroid/providers/settings/SecureSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
