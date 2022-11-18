.class public final Landroid/providers/settings/SystemSettingsProto$Text;
.super Ljava/lang/Object;
.source "SystemSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SystemSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Text"
.end annotation


# static fields
.field public static final blacklist AUTO_CAPS:J = 0x10b00000002L

.field public static final blacklist AUTO_PUNCTUATE:J = 0x10b00000003L

.field public static final blacklist AUTO_REPLACE:J = 0x10b00000001L

.field public static final blacklist SHOW_PASSWORD:J = 0x10b00000004L


# instance fields
.field final synthetic blacklist this$0:Landroid/providers/settings/SystemSettingsProto;


# direct methods
.method public constructor blacklist <init>(Landroid/providers/settings/SystemSettingsProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/providers/settings/SystemSettingsProto;

    .line 165
    iput-object p1, p0, Landroid/providers/settings/SystemSettingsProto$Text;->this$0:Landroid/providers/settings/SystemSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
