.class public interface abstract annotation Landroid/security/IGenerateRkpKeyService$Status;
.super Ljava/lang/Object;
.source "IGenerateRkpKeyService.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/IGenerateRkpKeyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IGenerateRkpKeyService$Status$$;
    }
.end annotation


# static fields
.field public static final blacklist DEVICE_NOT_REGISTERED:I = 0x4

.field public static final blacklist HTTP_CLIENT_ERROR:I = 0x5

.field public static final blacklist HTTP_SERVER_ERROR:I = 0x6

.field public static final blacklist HTTP_UNKNOWN_ERROR:I = 0x7

.field public static final blacklist INTERNAL_ERROR:I = 0x8

.field public static final blacklist NETWORK_COMMUNICATION_ERROR:I = 0x2

.field public static final blacklist NO_NETWORK_CONNECTIVITY:I = 0x1

.field public static final blacklist OK:I
