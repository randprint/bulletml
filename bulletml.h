
// �ȉ��� ifdef �u���b�N�� DLL ����ȒP�ɃG�N�X�|�[�g������}�N�����쐬����W���I�ȕ��@�ł��B 
// ���� DLL ���̂��ׂẴt�@�C���̓R�}���h���C���Œ�`���ꂽ BULLETML_EXPORTS �V���{��
// �ŃR���p�C������܂��B���̃V���{���͂��� DLL ���g�p����ǂ̃v���W�F�N�g��ł�����`�łȂ�
// ��΂Ȃ�܂���B���̕��@�ł̓\�[�X�t�@�C���ɂ��̃t�@�C�����܂ނ��ׂẴv���W�F�N�g�� DLL 
// ����C���|�[�g���ꂽ���̂Ƃ��� BULLETML_API �֐����Q�Ƃ��A���̂��߂��� DLL �͂��̃}�N 
// ���Œ�`���ꂽ�V���{�����G�N�X�|�[�g���ꂽ���̂Ƃ��ĎQ�Ƃ��܂��B
#ifdef BULLETML_EXPORTS
#define BULLETML_API __declspec(dllexport)
#else
#define BULLETML_API __declspec(dllimport)
#endif

// ���̃N���X�� bulletml.dll ����G�N�X�|�[�g����܂�
class BULLETML_API CBulletml {
public:
	CBulletml(void);
	// TODO: ���̈ʒu�Ƀ��\�b�h��ǉ����Ă��������B
};

extern BULLETML_API int nBulletml;

BULLETML_API int fnBulletml(void);

