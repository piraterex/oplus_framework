.class public Landroid/util/BoostFramework$Launch;
.super Ljava/lang/Object;
.source "BoostFramework.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/BoostFramework;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Launch"
.end annotation


# static fields
.field public static final blacklist ACTIVITY_LAUNCH_BOOST:I = 0xa

.field public static final blacklist BOOST_GAME:I = 0x4

.field public static final blacklist BOOST_V1:I = 0x1

.field public static final blacklist BOOST_V2:I = 0x2

.field public static final blacklist BOOST_V3:I = 0x3

.field public static final blacklist RESERVED_1:I = 0x5

.field public static final blacklist RESERVED_2:I = 0x6

.field public static final blacklist RESERVED_3:I = 0x7

.field public static final blacklist RESERVED_4:I = 0x8

.field public static final blacklist RESERVED_5:I = 0x9

.field public static final blacklist TYPE_ATTACH_APPLICATION:I = 0x67

.field public static final blacklist TYPE_SERVICE_START:I = 0x64

.field public static final blacklist TYPE_START_APP_FROM_BG:I = 0x66

.field public static final blacklist TYPE_START_PROC:I = 0x65


# instance fields
.field final synthetic blacklist this$0:Landroid/util/BoostFramework;


# direct methods
.method public constructor blacklist <init>(Landroid/util/BoostFramework;)V
    .locals 0
    .param p1, "this$0"    # Landroid/util/BoostFramework;

    .line 141
    iput-object p1, p0, Landroid/util/BoostFramework$Launch;->this$0:Landroid/util/BoostFramework;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
