.class public Landroid/os/OplusManager$StampEvent;
.super Ljava/lang/Object;
.source "OplusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/OplusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StampEvent"
.end annotation


# instance fields
.field public whitelist dayno:Ljava/lang/String;

.field public whitelist eventId:Ljava/lang/String;

.field public whitelist hour:Ljava/lang/String;

.field public whitelist logMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public whitelist otaVersion:Ljava/lang/String;

.field public whitelist timestamp:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    return-void
.end method
