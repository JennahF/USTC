#ifndef __COMMON_COMMON_H__
#define __COMMON_COMMON_H__

#ifndef MAX_TOKEN_LEN
#define MAX_TOKEN_LEN 20
#endif

/// \brief get all file paths under 'testcase' directory
///
/// under 'testcase' directory, there could be many *.cminus files.
/// \param filename array of output file names
/// \return length of filename[][]
int getAllTestcase(char filename[][256]);

#endif /* common/common.h */
