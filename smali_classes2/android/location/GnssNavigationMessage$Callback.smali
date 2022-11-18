.class public abstract Landroid/location/GnssNavigationMessage$Callback;
.super Ljava/lang/Object;
.source "GnssNavigationMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssNavigationMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssNavigationMessage$Callback$GnssNavigationMessageStatus;
    }
.end annotation


# static fields
.field public static final whitelist STATUS_LOCATION_DISABLED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STATUS_NOT_SUPPORTED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STATUS_READY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onGnssNavigationMessageReceived(Landroid/location/GnssNavigationMessage;)V
    .locals 0
    .param p1, "event"    # Landroid/location/GnssNavigationMessage;

    .line 151
    return-void
.end method

.method public whitelist onStatusChanged(I)V
    .locals 0
    .param p1, "status"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 162
    return-void
.end method
