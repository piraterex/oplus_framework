.class public final Landroid/providers/settings/SecureSettingsProto$Sounds;
.super Ljava/lang/Object;
.source "SecureSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SecureSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Sounds"
.end annotation


# static fields
.field public static final blacklist CHARGING_SOUNDS_ENABLED:J = 0x10b00000001L

.field public static final blacklist CHARGING_VIBRATION_ENABLED:J = 0x10b00000002L


# instance fields
.field final synthetic blacklist this$0:Landroid/providers/settings/SecureSettingsProto;


# direct methods
.method public constructor blacklist <init>(Landroid/providers/settings/SecureSettingsProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/providers/settings/SecureSettingsProto;

    .line 811
    iput-object p1, p0, Landroid/providers/settings/SecureSettingsProto$Sounds;->this$0:Landroid/providers/settings/SecureSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
