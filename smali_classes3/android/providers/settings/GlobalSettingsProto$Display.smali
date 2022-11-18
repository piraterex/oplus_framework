.class public final Landroid/providers/settings/GlobalSettingsProto$Display;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Display"
.end annotation


# static fields
.field public static final blacklist PANEL_LPM:J = 0x10b00000003L

.field public static final blacklist SCALING_FORCE:J = 0x10b00000002L

.field public static final blacklist SIZE_FORCED:J = 0x10b00000001L


# instance fields
.field final synthetic blacklist this$0:Landroid/providers/settings/GlobalSettingsProto;


# direct methods
.method public constructor blacklist <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/providers/settings/GlobalSettingsProto;

    .line 404
    iput-object p1, p0, Landroid/providers/settings/GlobalSettingsProto$Display;->this$0:Landroid/providers/settings/GlobalSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
